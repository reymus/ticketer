define([], function() {

    const ParamTypes = {
        Path: 'Path', 
        Query: 'Query', 
        Body: 'Body'
    };

    const Services = {

        Tickets: {

            GetAllTickets: {
                method: 'GET',
                path: '/api/tickets/',
                params: [
                    // TODO: Make these params available for reuse
                    {
                        name: 'fields',
                        paramType: ParamTypes.Query
                    }, {
                        name: 'offset',
                        paramType: ParamTypes.Query 
                    }, {
                        name: 'limit',
                        paramType: ParamTypes.Query
                    }, {
                        name: 'sortBy',
                        paramType: ParamTypes.Query
                    }, {
                        name: 'flatten',
                        paramType: ParamTypes.Query
                    }
                ]
            },
            GetTicket: {
                method: 'GET',
                path: '/api/tickets/{id}',
                params: [
                    {
                        name: 'id',
                        paramType: ParamTypes.Path,
                        required: true
                    }
                ]
            },
            PostTicket: {
                method: 'POST',
                path: '/api/tickets/',
                params: [
                    {
                        name: 'summary',
                        paramType: ParamTypes.Body,
                        required: true
                    }, {
                        name: 'description',
                        paramType: ParamTypes.Body
                    }, {
                        name: 'type',
                        paramType: ParamTypes.Body,
                        required: true
                    }, {
                        name: 'severity',
                        paramType: ParamTypes.Body
                    }
                ]
            }
        },

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