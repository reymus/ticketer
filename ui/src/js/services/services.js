define(["./paramtypes", "./tickets", "./process", "./login","./users","./severities","./resolutions","./status","./ticketTypes"], function(ParamTypes, Tickets, Process, Login, Users, Severities, Resolutions, Status, TicketTypes) {
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