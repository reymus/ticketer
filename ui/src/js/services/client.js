define(['jquery', './../appViewModel', './services', 'promise', './../utils/cache'], function($, app, services, Promise, cache) {
    "use strict";

    const ParamTypes = {
        Path: 'Path',
        Query: 'Query',
        Body: 'Body'
    };

    const Auth = {
        name: 'Authorization',
        value: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjp7ImlkIjo1LCJmaXJzdF9uYW1lIjoidGVzdCBuYW1lIiwibGFzdF9uYW1lIjoidGVzdCBsYXN0IiwiZW1haWwiOiJ4eHh4QHh4YS5jb20ifSwiaWF0IjoxNTkyNjcyMjgyLCJleHAiOjE1OTI2ODY2ODJ9.YIUrLmmIw_G1f9O8v2Ao1rFWh4_7esWgfarP_Hz2KtA'
    };

    const getEndpoint = (path) => {
        let segments = path.split('.');
        let endpoint = services;
        while (segments.length > 0) {
            let segment = segments.shift();
            endpoint = endpoint[segment];
        }
        // For better error handling, set the endpoint name 
        // to the param used to access it.
        endpoint.name = path;
        return endpoint;
    };

    const validateParams = (endpoint, params) => {
        let endpointParams = endpoint.params || [];
        for (let i = 0; i < endpointParams.length; i++) {
            let paramDef = endpointParams[i];
            if (!Object.keys(params).includes(paramDef.name)) {
                throw new Exception(`Missing required parameter '${paramDef.name}' for endpoint ${endpoint.name}.`);
            }
        }
    };

    const getUri = (endpoint, params) => {
        let uri = endpoint.path;
        let endpointParams = endpoint.params || [];
        for (let i = 0; i < endpointParams.length; i++) {
            let paramDef = endpointParams[i];
            if (paramDef.paramType === ParamTypes.Path) {
                uri = uri.replace(`{${paramDef.name}}`, params[paramDef.name]);
            }
        }
        return uri;
    };

    const getQueryString = (endpoint, params) => {
        let queryString = [];
        let endpointParams = endpoint.params || [];
        for (let i = 0; i < endpointParams.length; i++) {
            let paramDef = endpointParams[i];
            if (paramDef.paramType === ParamTypes.Query && (typeof params[paramDef.name] !== 'undefined')) {
                queryString.push(`${paramDef.name}=${params[paramDef.name]}`);
            }
        }
        return queryString.join('&');
    };

    const getBody = (endpoint, params) => { // jshint ignore:line
        let body = {};
        let endpointParams = endpoint.params || [];
        for (let i = 0; i < endpointParams.length; i++) {
            let paramDef = endpointParams[i];
            if (paramDef.paramType === ParamTypes.Body && (typeof params[paramDef.name] !== 'undefined')) {
                body[paramDef.name] = params[paramDef.name];
            }
        }
        body = JSON.stringify(body)
        return body;
    };


    const getAuthorizationHeader = () => {
        let key = Auth.name;
        let token = cache.get(key);
        return token;
    }

    const setAuthorizationHeader = () => {
        let key = Auth.name;
        let value = Auth.value;
        cache.put(key, value)
    }

    const Client = {


        invoke: function(endpointPath, params) {
            let endpoint = getEndpoint(endpointPath);
            try {
                validateParams(endpoint, params);
            } catch (err) {
                // Handle error
            }
            // Build URI
            let uri = getUri(endpoint, params);

            // Build query string
            let queryString = getQueryString(endpoint, params);

            // Build the URL
            let url = uri + (queryString ? '?' + queryString : '');

            // Build the body payload
            let payload = getBody(endpoint, params);
            setAuthorizationHeader();
            let auth = getAuthorizationHeader();

            return new Promise(function(resolve, reject) {

                $.ajax({

                    method: endpoint.method,

                    url: url,

                    headers: {
                        Accept: 'application/json',
                        Authorization: auth
                    },

                    contentType: 'application/json',

                    data: payload,


                    success: function(data, textStatus, jqXhr) { // jshint ignore:line

                        resolve.apply(null, arguments);
                    },

                    error: function(jqXhr, textStatus, error) { // jshint ignore:line
                        reject.apply(null, arguments);
                    }
                });
            });
        }

    };

    return Client;

});