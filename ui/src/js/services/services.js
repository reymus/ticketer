define(["./paramtypes", "./tickets", "./process"], function(ParamTypes, Tickets, Process) {
    "use strict";
    const Services = {

        Tickets,

        Process,

        // TODO: Remove after POC
        SampleInvalidPath: {
            SampleInvalidEndpoint: {
                method: 'GET',
                path: '/api/invalid/',
                params: [
                    {
                        name: 'sortBy',
                        paramType: ParamTypes.Query
                    }
                ]
            }
        }
    };
    return Services;
});