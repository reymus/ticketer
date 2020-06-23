define(["./paramtypes", "./tickets", "./process", "./login"], function(ParamTypes, Tickets, Process, Login) {
    "use strict";
    const Services = {

        Tickets,

        Process,

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