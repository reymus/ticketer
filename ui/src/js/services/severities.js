define(["./paramtypes"], function(ParamTypes) {
  'use strict';
  return{
    CreateSeverity: {
      method: 'POST',
      path: '/api/severities/',
      params: [
        {
          name: 'name',
          paramType: ParamTypes.Body,
          required: true
        }
      ]
    },

    UpdateSeverity: {
      method: 'PATCH',
      path: '/api/severities/{id}',
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