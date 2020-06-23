define([], function() {
    'use strict';
/* This function decode  the token payload for use the user information on logged section, 
   For more information consult
   https://stackoverflow.com/questions/30106476/using-javascripts-atob-to-decode-base64-doesnt-properly-decode-utf-8-strings
*/ 
    const Decoder = {
        parseJwt: function(token) {
            //split  by dot  in order to  get the string where the payload
            let base64Url = token.split('.')[1];
            // replace all "-" or "_" globally (g).
            let base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
            let jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
                return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
            }).join(''));

            return JSON.parse(jsonPayload);
        }
    };

    return Decoder;
});