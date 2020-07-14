const QueryModel = require('./../database/querymodel');
const { UserQueries, UserQueryFilters, Tickets, Types } = require('./../database/model');
const db = require('./../database');

const logger = require('./../logger').getLogger("queries");

const getSystemQueries = async () => {
  return [
    {
      name: "All Open Tickets",
      filters: {
        status: [1, 2, 3]
      }
    }, {
      name: "My Open Tickets",
      filters: {
        owner: "$current_user",
        status: [1, 2, 3]
      }
    }
  ]
};

const saveUserQuery = async (params, user) => {
  let sql = `INSERT INTO user_queries VALUES(null, '${user.id}', '${params.name}')`;
  let result;
  try {
    result = await db.query(sql);
  } catch (e) {
    let message = e.message || messages.errors(e.errno);
    logger.error(message);
    throw new Error(message);
  }
  let queryId = result.insertId;
  for (let field in params.filters) {
    let values = params.filters[field];
    if (!Array.isArray(values)) {
      values = [values];
    }
    for (let i = 0; i < values.length; i++) {
      let value = values[i];
      let sql = `INSERT INTO user_query_filters VALUES(null, ${queryId}, '${field}', '${value}')`;
      logger.info(`Saving user query filters: ${sql}`);

      let result;
      try {
        result = await db.query(sql);
      } catch (e) {
        let message = e.message || messages.errors(e.errno);
        logger.error(message);
        throw new Error(message);
      }
    }
  };
  return getUserQuery(queryId);
};

const getUserQuery = async (id) => {
  let queryModel = new QueryModel(UserQueries);
  let query = queryModel.select("*").byPrimaryKey(id).build();
  logger.info(`Geting user query ${id}: ${query}`);
  // Fetch query info
  let result = await db.query(query);
  // Fetch the filters
  let filters = await getQueryFilters(id);
  return {
    id,
    name: result[0].name,
    filters
  };
};

const getUserQueries = async (user) => {
  let queryModel = new QueryModel(UserQueries);
  let query = queryModel.select("*").where('user_id').equals(user.id).build();
  let queries = await db.query(query);
  // Avoid Array.prototype.map since its async/await usage is a bit messy.
  for (let i = 0; i < queries.length; i++) {
    let query = queries[i];
    // Fetch the filters
    let filters = await getQueryFilters(query.id);
    // Replace the query object with out inflated result.
    queries[i] = { 
      id: query.id,
      name: query.name,
      filters
    };
  }
  return queries;
};

const castFilterValue = (model, field, value) => {
  let modelledField = model.fields[field];
  if (!modelledField) {
    throw new Error(`Modelled field ${field} doesn't exist for model ${model}.`);
  }
  switch (modelledField.type) {
    case Types.INT: return Number(value);
    default: return value;
  }
}

const getQueryFilters = async (queryId) => {
  let queryModel = new QueryModel(UserQueryFilters);
  let query = queryModel.select("*").where('query_id').equals(queryId).build();
  let filters = await db.query(query);
  let map = {};
  filters.forEach(filter => {
    // Coerce value first...
    filter.value = castFilterValue(Tickets, filter.field, filter.value);
    
    let value = map[filter.field]
    if (!value) {
      // No value, yet. Use the current.
      map[filter.field] = filter.value;
    } else if (Array.isArray(value)) {
      // An array already. Just push the new value
      value.push(filter.value);
    } else {
      // A single value... create an array with both values
      map[filter.field] = [value, filter.value];
    }
  });
  return map;
};

const getQueries = async(user) => {
  let systemQueries = await getSystemQueries();
  let userQueries = await getUserQueries(user);
  return {
    system: systemQueries, 
    user: userQueries
  };
};

module.exports = {
  getSystemQueries,
  getUserQuery,
  getUserQueries,
  getQueries,
  saveUserQuery
};