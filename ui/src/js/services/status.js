define(["./paramtypes"], function(ParamTypes) {
  'use strict';
  return{
    CreateStatus: {
      method: 'POST',
      path: '/api/status/',
      params: [
        {
          name: 'name',
          paramType: ParamTypes.Body,
          required: true
        }
      ]
    },

    UpdateStatus: {
      method: 'PATCH',
      path: '/api/status/{id}',
      params: [
        {
          name: 'id',
          paramType: ParamTypes.Path,
          required: true
        },
        {
          name: 'name',
          paramType: ParamTypes.Body,
        }
      ]
    }
    
  };
});