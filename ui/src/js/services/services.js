define(
  ["./paramtypes",
   "./tickets",
    "./process",
    "./login",
    "./users",
    "./severities",
    "./resolutions",
    "./status",
    "./ticketTypes",
    "./queries",
  ], function(ParamTypes, Tickets, Process, Login, Users, Severities, Resolutions, Status, TicketTypes, Queries) {
    "use strict";
    const Services = {

        Tickets,
        Process,
        Users,
        Severities,
        Resolutions,
        Status,
        TicketTypes,
        Login,
        Queries        
    };
    return Services;
});