
const QueryModel = require('./../database/querymodel');
const { Users } = require('./../database/model');
const db = require('./../database');

const getUsers = async () => {
  let queryModel = new QueryModel(Users);
  let query = queryModel.select("*").build();
  let results = await db.query(query);
  return results;
};

module.exports = app;
