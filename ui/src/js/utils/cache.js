define([], function() {
    "use strict";

    const map = {}; // guardar en session storage
    let Cache = {
        put: function(key, value) {
            sessionStorage.setItem(key, value);
            // mete a map
        },

        get: function(key) {
            return sessionStorage.getItem(key);
        }
    }

    return Cache;
});