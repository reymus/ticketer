

const db = require('./../database');


const getTickets = async (params) => {
  let tickets = await db.query(`SELECT * FROM tickets LIMIT ${params.max};`);
  return tickets;
};

module.exports = {
  getTickets
};