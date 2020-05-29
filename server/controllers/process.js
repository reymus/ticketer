
const QueryModel = require('./../database/querymodel');
const model = require('./../database/model');
const db = require('./../database');

const getProcessData = async () => {
  const fetchAll = async (model) => {
    let queryModel = new QueryModel(model);
    let query = queryModel.select("*").build();
    return await db.query(query);
  };
  let status = await fetchAll(model.Status);
  let resolutions = await fetchAll(model.Resolutions);
  let ticket_types = await fetchAll(model.TicketTypes);
  let severities = await fetchAll(model.Severities);
  return {
    status,
    resolutions,
    ticket_types,
    severities
  };
};

module.exports = {
  getMetadata
};