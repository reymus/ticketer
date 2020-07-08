define(["./paramtypes"], function(ParamTypes) {
  'use strict';
  return{
    CreateTicketType: {
      method: 'POST',
      path: '/api/tickettypes/',
      params: [
        {
          name: 'name',
          paramType: ParamTypes.Body,
          required: true
        }
      ]
    },

    UpdateTicketType: {
      method: 'PATCH',
      path: '/api/tickettypes/{id}',
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
    
  }
});