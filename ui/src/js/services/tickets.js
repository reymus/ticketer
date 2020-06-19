define(["./paramtypes"], function(ParamTypes) {
  "use strict";

  return {

    GetAllTickets: {
      method: 'GET',
      path: '/api/tickets/',
      params: [
        // TODO: Make these params available for reuse
        {
          name: 'fields',
          paramType: ParamTypes.Query
        }, {
          name: 'offset',
          paramType: ParamTypes.Query
        }, {
          name: 'limit',
          paramType: ParamTypes.Query
        }, {
          name: 'sortBy',
          paramType: ParamTypes.Query
        }, {
          name: 'flatten',
          paramType: ParamTypes.Query
        }
      ]
    },
    GetTicket: {
      method: 'GET',
      path: '/api/tickets/{id}',
      params: [
        {
          name: 'id',
          paramType: ParamTypes.Path,
          required: true
        }
      ]
    },
    PostTicket: {
      method: 'POST',
      path: '/api/tickets/',
      params: [
        {
          name: 'summary',
          paramType: ParamTypes.Body,
          required: true
        }, {
          name: 'description',
          paramType: ParamTypes.Body
        }, {
          name: 'type',
          paramType: ParamTypes.Body,
          required: true
        }, {
          name: 'severity',
          paramType: ParamTypes.Body
        },
        {
          name: 'owner',
          paramType: ParamTypes.Body
        },
        {
          name: 'status',
          paramType: ParamTypes.Body
        },
        {
          name: 'created_at',
          paramType: ParamTypes.Body
        },
        {
          name: 'created_by',
          paramType: ParamTypes.Body
        }
      ]
    },
    PatchTicket: {
      method: 'PATCH',
      path: '/api/tickets/{id}',
      params: [
        {
          name: 'id',
          paramType: ParamTypes.Path,
          required: true
        },
        {
          name: 'summary',
          paramType: ParamTypes.Body,
        }, 
        {
          name: 'description',
          paramType: ParamTypes.Body
        }, 
        {
          name: 'type',
          paramType: ParamTypes.Body,
        }, 
        {
          name: 'severity',
          paramType: ParamTypes.Body
        },
        {
          name: 'owner',
          paramType: ParamTypes.Body
        },
        {
          name: 'status',
          paramType: ParamTypes.Body
        },
        {
          name: 'created_at',
          paramType: ParamTypes.Body
        },
        {
          name: 'created_by',
          paramType: ParamTypes.Body
        }
      ]
    }
  };
});