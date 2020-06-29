define([
  "./tickets", 
  "./process", 
  "./login",
  "./queries"
], function(Tickets, Process, Login, Queries) {
  "use strict";
  const Services = {
    Tickets,
    Process,
    Login,
    Queries
  };
  return Services;
});