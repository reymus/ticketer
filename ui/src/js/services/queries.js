define(['./paramtypes'], function (paramTypes) {
  'use strict';
  return {
    GetQueries: {
      method: 'GET',
      path: '/api/queries/',
      params: []
    },
    CreateQuery: {
      method: 'POST',
      path: '/api/queries/',
      params: [{
          name: 'name',
          paramType: paramTypes.Body,
          required: true
        },
        {
          name: 'fields',
          paramType: paramTypes.Body,
          required: true
        }
      ]
    }
  };
});