

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
  let sql = sql`
    SELECT 
      tickets.id, tickets.summary, tickets.description, ticket_types.name as type, 
      owner.first_name as "owner.first_name", owner.last_name as "owner.last_name", owner.email as "owner.email", 
      status.name as "status", severities.name as "severity",
      tickets.created_at, created_by.first_name as "created_by.first_name", created_by.last_name as "created_by.last_name", created_by.email as "created_by.email", 
      tickets.updated_at, updated_by.first_name as "updated_by.first_name", updated_by.last_name as "updated_by.last_name", updated_by.email as "updated_by.email",
      resolutions.name as "resolution", 
      tickets.resolved_at, resolved_by.first_name as "resolved_by.first_name", resolved_by.last_name as "resolved_by.last_name", resolved_by.email as "resolved_by.email"
    FROM 
        ((((((((
          tickets 
          INNER JOIN ticket_types ON tickets.type = ticket_types.id)
          INNER JOIN users as owner ON tickets.owner = owner.id)
          LEFT JOIN resolutions ON tickets.resolution = resolutions.id)
          INNER JOIN users as created_by ON tickets.created_by = created_by.id)
          INNER JOIN users as updated_by ON tickets.updated_by = updated_by.id)
          INNER JOIN status ON tickets.status = status.id)
          INNER JOIN severities ON tickets.severity = severities.id)
          LEFT JOIN users as resolved_by ON tickets.resolved_by = null or tickets.resolved_by = resolved_by.id)
    LIMIT ${params.max};
  `;
  let tickets = await db.query(sql);
  tickets = processResults(tickets);
  return tickets;
};

module.exports = {
  getTickets
};