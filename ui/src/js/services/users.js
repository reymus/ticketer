define(["./paramtypes"], function(ParamTypes) {
  'use strict';
  return{
    CreateUser: {
      method: 'POST',
      path: '/api/users/',
      params: [
        {
          name: 'first_name',
          paramType: ParamTypes.Body,
          required: true
        }, {
          name: 'last_name',
          paramType: ParamTypes.Body,
          required: true
        }, {
          name: 'email',
          paramType: ParamTypes.Body,
          required: true
        }, {
          name: 'password',
          paramType: ParamTypes.Body,
          required: true
        }
      ]
    },
    UpdateUser: {
      method: 'PATCH',
      path: '/api/users/{id}',
      params: [
        {
          name: 'id',
          paramType: ParamTypes.Path,
          required: true
        },
        {
          name: 'first_name',
          paramType: ParamTypes.Body,
        }, {
          name: 'last_name',
          paramType: ParamTypes.Body,
        }, {
          name: 'email',
          paramType: ParamTypes.Body,
        },
      ]
    }
  }
});