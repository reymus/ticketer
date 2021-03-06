(function() {
    "use strict";

    requirejs.config({

        baseUrl: 'js',

        // Path mappings for the logical module names
        paths:
        // injector:mainReleasePaths
        {
            'knockout': 'libs/knockout/knockout-3.5.0.debug',
            'jquery': 'libs/jquery/jquery-3.5.1',
            'jqueryui-amd': 'libs/jquery/jqueryui-amd-1.12.1',
            'hammerjs': 'libs/hammer/hammer-2.0.8',
            'ojdnd': 'libs/dnd-polyfill/dnd-polyfill-1.0.1',
            'ojs': 'libs/oj/v8.3.0/debug',
            'ojL10n': 'libs/oj/v8.3.0/ojL10n',
            'ojtranslations': 'libs/oj/v8.3.0/resources',
            'text': 'libs/require/text',
            'signals': 'libs/js-signals/signals',
            'customElements': 'libs/webcomponents/custom-elements.min',
            'proj4': 'libs/proj4js/dist/proj4-src',
            'css': 'libs/require-css/css',
            'touchr': 'libs/touchr/touchr',
            'corejs': 'libs/corejs/shim',
            'regenerator-runtime': 'libs/regenerator-runtime/runtime',
            'promise': 'libs/es6-promise/promise'
        }
        // endinjector
    });
}());

require([
    'ojs/ojbootstrap',
    'knockout',
    'appViewModel',
    'ojs/ojrouter',
    'ojs/ojlogger',
    'ojs/ojknockout',
    'ojs/ojmodule',
    'ojs/ojrouter',
    'ojs/ojnavigationlist',
    'ojs/ojbutton',
    'ojs/ojtoolbar',
    'ojs/ojinputtext',
    'ojs/ojlabel',
    'ojs/ojbutton'
], function(Bootstrap, ko, app, Router, Logger) {
    "use strict";

    Bootstrap.whenDocumentReady().then(function() {

        Router.sync().then(
            function() {
                app.loadModule();
                // Bind your ViewModel for the content of the whole page body.
                ko.applyBindings(app, document.getElementById('globalBody'));
            },
            function(error) {
                Logger.error('Error in root start: ' + error.message);
            }
        );

    });
});