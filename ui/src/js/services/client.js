define(['jquery', './../appViewModel', './services', './../utils/cache'], function($, app, services, cache) {
  "use strict";

  const ParamTypes = {
    Path: 'Path',
    Query: 'Query',
    Body: 'Body'
  };

  const getEndpoint = (path) => {
    try {
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
    } catch (e) {
      throw new Error(`Unable to resolve endpoint with path ${path}.`);
    }
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

  const isEmptyArray = (value) => {
    return Array.isArray(value) && value.length === 0;
  };

  const getQueryString = (endpoint, params) => {
    let queryString = [];
    let endpointParams = endpoint.params || [];
    for (let i = 0; i < endpointParams.length; i++) {
      let paramDef = endpointParams[i];
      let value = params[paramDef.name];
      if (paramDef.paramType === ParamTypes.Query && (typeof value !== 'undefined')
        && !isEmptyArray(value)) {
        queryString.push(`${paramDef.name}=${value}`);
      }
    }
    return queryString.join('&');
  };

  const getBody = (endpoint, params) => {
    if (!['POST', 'PUT', 'PATCH'].includes(endpoint.method)) {
      return null;
    }
    let body = {};
    let endpointParams = endpoint.params || [];
    for (let i = 0; i < endpointParams.length; i++) {
      let paramDef = endpointParams[i];
      if (paramDef.paramType === ParamTypes.Body && (typeof params[paramDef.name] !== 'undefined')) {
        body[paramDef.name] = params[paramDef.name];
      }
    }
    body = JSON.stringify(body);
    return body;
  };

  const Client = {

    getAuthorizationHeader: () => {
      let token = cache.get('Authorization');
      return token;
    },

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
      //authorization 
      let auth = this.getAuthorizationHeader();

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
            if (jqXhr.status === 401) {
              // TODO: Ideally, we would have page specific stuff like this 
              // decoupled from this (supposedly) generic client invokation
              // module. Would look into this in the future.
              cache.delete('Authorization');
              let url = window.location.pathname;
              let filename = url.substring(url.lastIndexOf('/') + 1);
              if (filename !== 'login.html') {
                window.location.href = 'login.html';
              }
            }
            reject.apply(null, arguments);
          },

          beforeSend: function(xhr) {
            xhr.setRequestHeader('Authorization', auth);
          }
        });
      });
    }
  };

  return Client;
});