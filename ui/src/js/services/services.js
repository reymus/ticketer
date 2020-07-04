define([
  "./tickets", 
  "./process", 
  "./login",
  "./queries",
  "./comments"
], function(Tickets, Process, Login, Queries, Comments) {
  "use strict";
  const Services = {
    Tickets,
    Process,
    Login,
    Queries,
    Comments
  };
  return Services;
});