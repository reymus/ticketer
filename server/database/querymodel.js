// Simple query model useful to build queries across modeled tables 
// allowing to resolve references in a simple step without the need 
// to hand write confusing SQL JOINS.
//
// TODO: Document this thing...

/*

Sample usage:

let queryModel = new QueryModel(Tickets);
  let query = queryModel.select('id', 'owner', 'created_by')
    .where('created_by.first_name').equals("Marcelo")
    .and('created_at').after('2020-05-20')
    .orderBy('created_by.email')
    .orderBy('id', 'DESC')
    .limit(10).offset(30)
    .build();
    
  console.log(query);
*/

const logger = require("./../logger").getLogger("database.queryModel");

const QueryModel = function(model) {
    this.model = model;

    this.fields = [];
    this.orderByList = [];
    this.whereList = [];
};

QueryModel.prototype.select = function(fields) {
  if (fields) {
    this.fields = Array.isArray(fields) ? fields : Array.from(arguments);
  }
  // validate fields exist
  return this;
};

QueryModel.prototype.orderBy = function(field, order = "ASC") {
    this.orderByList.push({ field, order });
    return this;
};

QueryModel.prototype.limit = function(limit) {
    this._limit = limit;
    return this;
};

QueryModel.prototype.offset = function(offset) {
    this._offset = offset;
    return this;
};

QueryModel.prototype.byPrimaryKey = function(id) {
    this._byPrimaryKey = id;
    return this;
};

QueryModel.prototype.where = function(field) {

  if (this.whereList.length > 0) {
    // allow to call where multiple times and treat it as an implicit AND
    // throw new Error(`'where' called twice on query model. 'where' can only be called once. Use 'and' or 'or' to further refine your predicate`);
    let currentExpression = this.whereList[this.whereList.length - 1];
    if (!currentExpression.operator) {
      throw new Error(`'where' called on query model again before an expression was defined. Use 'equals', etc.. to complete the clause`);
    }
    this.whereList.push({
      logicalOperator: "AND",
      field
    });
  } else {
    this.whereList.push({
      field
    });
  }

  
  return this;
};

QueryModel.Operators = {
  '=': 'equals',
  '<>': 'equals',
};

QueryModel.prototype._defineExpression = function(operator, value) {
  if (this.whereList.length === 0) {
    throw new Error(`'${QueryModel.Operators[operator]}' called on query model before starting a predicate. Use 'where' to define a field to create a new predicate`);
  }
  let currentExpression = this.whereList[this.whereList.length - 1];
  if (currentExpression.operator) {
    throw new Error(`'${QueryModel.Operators[operator]}' called on query model after an operator was already defined. Use 'and' or 'or' to further refine your predicate`);
  }
  currentExpression.operator = operator;
  currentExpression.value = value;
  
  return this;
};

QueryModel.prototype.equals = function(value) {
  return this._defineExpression('=', value);
};

QueryModel.prototype.notEquals = function(value) {
  return this._defineExpression('<>', value);
};

QueryModel.prototype.like = function(value) {
  return this._defineExpression('LIKE', `%${value}%`);
};

QueryModel.prototype.in = function(value) {
  let values = [];
  if (Array.isArray(value)) {
    values = value;
  } else if (typeof value === 'string') {
    values = value.split(",");
  } else if (value) {
    values = [value];
  }
  values.map(value => `'${value}'`).join(', ');
  return this._defineExpression('IN', `(${values})`);
};

QueryModel.prototype._newExpression = function(operator, field) {
  if (this.whereList.length === 0) {
    throw new Error(`'${QueryModel.Operators[operator]}' called on query model before starting a predicate. Use 'where' to define a field to create a new predicate`);
  }
  this.whereList.push({
    logicalOperator: operator,
    field
  });
  
  return this;
};

QueryModel.prototype.and = function(field) {
  return this._newExpression('AND', field);
};

QueryModel.prototype.or = function(field) {
  return this._newExpression('OR', field);
};

QueryModel.prototype.build = function() {
    let froms = [this.model.table];
    let fields = [];
    
    if (this.fields.length === 0) {
      fields = Object.keys(this.model.fields);
    } else if (this.fields.length === 1 && this.fields[0] === '*') {
      fields = Object.keys(this.model.fields);
    } else {
      fields = Object.keys(this.model.fields).filter(field => this.fields.indexOf(field) !== -1);
    }

    // Add fields needed in WHERE claused
    this.whereList.forEach(where => {
      let field = where.field.split('.')[0]; // fix this
      if (!fields.includes(field)) {
        fields.push(field);
      }
    });

    let selectFields = [];
    for (let i = 0; i < fields.length; i++) {
        let fieldName = fields[i];
        let field = this.model.fields[fieldName];
        if (field.reference) {
            let refFields = Object.keys(field.reference.fields);
            for (let j = 0; j < refFields.length; j++) {
                let refFieldName = refFields[j];
                //let refField = field.reference.fields[refFieldName];

                selectFields.push(`${fieldName}.${refFieldName} AS '${fieldName}.${refFieldName}'`);
            }
            let join = field.nullable ? 'LEFT JOIN' : 'INNER JOIN';
            froms.push(`${join} ${field.reference.table} AS ${fieldName} ON ${this.model.table}.${fieldName} = ${fieldName}.${field.reference.primaryKey}`);
        } else {
            selectFields.push(`${this.model.table}.${fieldName}`);
        }
    }

    let from = froms[0];
    for (let i = 1; i < froms.length; i++) {
        from = `(${from}
      ${froms[i]})`;
    }

    let sql = `
  SELECT 
    ${this.formatList(selectFields)} 
  FROM ${from}
  `;
    if (this._byPrimaryKey) {
        sql += `WHERE ${this.model.table}.${this.model.primaryKey} = '${this._byPrimaryKey}'
        `;
    }
    if (this.whereList.length > 0) {
      if (!this._byPrimaryKey) {
        sql += `WHERE 
        `;
      } else {
        sql += `
          AND 
        `;
      }
      for (let i = 0; i < this.whereList.length; i++) {
        let where = this.whereList[i];
        if (where.logicalOperator) {
          sql += `
          ${where.logicalOperator} `;
        }
        let field = where.field;
        if (Object.keys(this.model.fields).includes(field)) {
          field = `${this.model.table}.${field}`;
        }
        if (where.operator === 'LIKE') {
          sql += `LOWER(${field}) ${where.operator} LOWER('${where.value}') `;
        } else if (where.operator === 'IN') {
          sql += `${field} IN ${where.value} `;
        } else {
          sql += `${field} ${where.operator} '${where.value}' `;
        }
      }
    }
    if (this.orderByList.length > 0) {
        let orderBySegments = [];
        for (let i = 0; i < this.orderByList.length; i++) {
            orderBySegments.push(`${this.orderByList[i].field} ${this.orderByList[i].order}`);
        }
        sql += `ORDER BY ${orderBySegments.join(', ')}
    `;
    }
    if (this._limit || this._offset) {
      sql += '\n';
    }
    if (this._limit) {
        sql += `LIMIT ${this._limit}
    `;
    }
    if (this._offset) {
        sql += `OFFSET ${this._offset}
    `;
    }
    sql += ";";
    sql = this.formatSQL(sql);
    logger.info(`Emiting SQL: ${sql}`);
    return sql;
};

QueryModel.prototype.formatSQL = (sql) => {
  const keywords = ["SELECT", "FROM", "ORDER", "WHERE", "LIMIT"];
  sql = sql.split('\n').map(line => {
    line = line.trimStart();
    if (line.length === 0) {
      return line;
    }
    let tokens = line.split(" ");
    let first = tokens[0];
    if (!keywords.includes(first)) {
      return "    " + line;
    }
    return line;
  }).join('\n').split('\n\n').join('\n');
  return sql;
};

QueryModel.prototype.formatList = (array = []) => {
  const maxLineLength = 140; // Set to 1 or something very low to print a field by line
  let lineLength = 0;
  let line = [];
  let output = "";
  logger.info(array);
  array.forEach((elem, idx) => {
    if ((elem.length + lineLength + 2) <= maxLineLength) {
      line.push(elem);
      lineLength += elem.length + 2;
    } else {
      if (idx !== 0) { // Avoid single comma when printing one field by line
        output += line.join(", ") + ",\n";
      }
      line = [elem];
      lineLength = elem.length;
    }
  });
  output += line.join(", ") + "\n";
  return output;
};

module.exports = QueryModel;