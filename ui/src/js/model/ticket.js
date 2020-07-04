define(['ojs/ojmodel', './../services/client'], function(Model, client) {
    "use strict";

    let Ticket = Model.Model.extend({
        urlRoot: '/api/tickets/',
        parse: ticket => ticket,
        //parseSave: this.parseSaveDept,
        idAttribute: 'id'
    });

    let newCollection = function(params) {

        params = params || {};

        // Resolve and build the key=value of a parameter
        let getParam = (param) => {
            let value = params[param];
            if (typeof value === 'function') {
                // knockout observable
                value = value();
            }
            if (Array.isArray(value)) {
                if (value.length) {
                    return `${param}:in=${value}`;
                } else {
                    return null;
                }
            } else if (value) {
                return `${param}=${value}`;
            } else {
                return null;
            }
        };

        let TicketCollection = Model.Collection.extend({

            // A callback to allow users to customize the data service URLs. 
            customURL: function(operation, collection, options) {
                let baseUri = '/api/tickets/';
                let queryParams = Object.keys(params).map(getParam).filter(param => param);
                if (options.startIndex) {
                    queryParams.push(`offset=${options.startIndex}`);
                }
                if (options.fetchSize) {
                    queryParams.push(`limit=${options.fetchSize}`);
                }
                let queryString = queryParams.join('&');

                let url = baseUri;
                if (queryString) {
                    url += '?' + queryString;
                }
                return {
                    url,
                    headers: {
                        'Authorization': client.getAuthorizationHeader()
                    }
                };
            },


            // This might not be needed, since the table provides the fetchSize
            fetchSize: 15,

            // A callback function allowing users to extract their own 
            // paging/virtualization return values from the server's response.
            customPagingOptions: function(args) {
                // This isn't the best approach. Just assume there's more if the results
                // aren't empty yet.
                return {
                    hasMore: (args || []).length > 0
                };
            },

            // No url. We are using the customURL option
            //url: '/api/tickets/',

            // The single item model.
            model: Ticket,

            comparator: "id"
        });
        return new TicketCollection();
    };

    return {
        Model: Ticket,
        newCollection
    };

});