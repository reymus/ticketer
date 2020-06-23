define(['./paramtypes'], function(paramTypes) {
    'use strict';
    return {
        Login: {
            method: 'POST',
            path: '/api/login/',
            params: [{
                    name: 'email',
                    paramType: paramTypes.Body,
                    required: true
                },
                {
                    name: 'password',
                    paramType: paramTypes.Body,
                    required: true
                }
            ]
        }
    };
});