define([], function() {
    "use strict";
    // actions in session storage
    let Cache = {
        put: function(key, value) {
            sessionStorage.setItem(key, value);
        },
        get: function(key) {
            return sessionStorage.getItem(key);
        },
        delete: function(key) {
            sessionStorage.removeItem(key);
        }
    }

    return Cache;
});