define(["./paramtypes"], function(ParamTypes) {
  'use strict';
  return{
    PostUser: {
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
    }
  }
});