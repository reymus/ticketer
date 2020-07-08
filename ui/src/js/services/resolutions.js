define(["./paramtypes"], function(ParamTypes) {
  'use strict';
  return{
    CreateResolution: {
      method: 'POST',
      path: '/api/resolutions/',
      params: [
        {
          name: 'name',
          paramType: ParamTypes.Body,
          required: true
        }
      ]
    },

    UpdateResolution: {
      method: 'PATCH',
      path: '/api/resolutions/{id}',
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