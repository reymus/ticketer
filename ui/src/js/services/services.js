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
define(["./paramtypes", "./tickets", "./process", "./login","./users"], function(ParamTypes, Tickets, Process, Login, Users) {
    "use strict";
    const Services = {

        Tickets,

        Process,
        
        Users,

        Login,
        // TODO: Remove after POC
        SampleInvalidPath: {
            SampleInvalidEndpoint: {
                method: 'GET',
                path: '/api/invalid/',
                params: [{
                    name: 'sortBy',
                    paramType: ParamTypes.Query
                }]
            }
        }
    };
    return Services;
});