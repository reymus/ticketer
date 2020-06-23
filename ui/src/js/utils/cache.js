define([], function() {
    "use strict";
    /*Put, get and delete in session storage for log in  and log out, 
      based in stored information can identify  who is logged
    */
    const Cache = {
        put: function(key, value) {
            sessionStorage.setItem(key, value);
        },
        get: function(key) {
            return sessionStorage.getItem(key);
        },
        delete: function(key) {
            sessionStorage.removeItem(key);
        }
    };

    return Cache;
});