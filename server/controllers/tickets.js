
const QueryModel = require('./../database/querymodel');
const { Tickets } = require('./../database/model');

const db = require('./../database');

const processResults = (tickets) => {
  return tickets.map(ticket => {
    let newTicket = {};
    Object.keys(ticket).forEach(key => {
      if (key.indexOf(".") !== -1) {
        let segments = key.split(".");
        let newKey = segments[0];
        let subKey = segments[1];
        if (!newTicket[newKey]) {
          newTicket[newKey] = {};
        }
        newTicket[newKey][subKey] = ticket[key];
      } else {
        newTicket[key] = ticket[key];
      }
    });
    return newTicket;
  });
};

const getTickets = async (params) => {
  let queryModel = new QueryModel(Tickets);
  queryModel.select(params.fields);

  params.sortBy = params.sortBy || [];
  params.sortBy.forEach(orderBy => {
    let segments = orderBy.split(":");
    let field = segments[0];
    let sortOrder = segments[1];
    queryModel.orderBy(field, sortOrder);
  });

  let query = queryModel.limit(params.limit).offset(params.offset).build();
  //console.log(query);
  
  let tickets = await db.query(query);
  if (!params.flatten) {
    tickets = processResults(tickets);
  }
  return tickets;
};

module.exports = {
  getTickets
};