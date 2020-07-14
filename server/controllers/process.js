
const QueryModel = require('./../database/querymodel');
const model = require('./../database/model');
const db = require('./../database');

const getProcessData = async () => {
  const fetchAll = async (model) => {
    let queryModel = new QueryModel(model);
    let query = queryModel.select("*").orderBy("id").build();
    return await db.query(query);
  };
  let status = await fetchAll(model.Status);
  let resolutions = await fetchAll(model.Resolutions);
  let ticket_types = await fetchAll(model.TicketTypes);
  let severities = await fetchAll(model.Severities);
  let users = await fetchAll(model.Users);
  return {
    status,
    resolutions,
    ticket_types,
    severities,
    users
  };
};

module.exports = {
  getProcessData
};