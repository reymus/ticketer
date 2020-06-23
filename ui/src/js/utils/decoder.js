define([], function() {
    'use strict';
/* This function decode  the token payload for use the user information on logged section, 
   first step is split  by dot  in order to  get the string where the payload
   is stored, then replace all "-" or "_" globally (g).
   atob()  decodes a base-64 encoded string.
   charCodeAt(0)  Return the Unicode of the first character in a string.
   toString(16) Convert a number to a string, using base 16.
   slice(-2) Return  last two elements  in array.
   For more information consult https://stackoverflow.com/questions/30106476/using-javascripts-atob-to-decode-base64-doesnt-properly-decode-utf-8-strings
*/ 
    const Decoder = {
        parseJwt: function(token) {
            let base64Url = token.split('.')[1];
            let base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
            let jsonPayload = decodeURIComponent(atob(base64).split('').map(function(c) {
                return '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2);
            }).join(''));

            return JSON.parse(jsonPayload);
        }
    };

    return Decoder;
});