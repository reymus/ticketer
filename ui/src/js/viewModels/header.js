define([
    'ojs/ojcore',
    'knockout',
    'jquery',
    './../appViewModel',
    './../utils/cache',
    'ojs/ojknockouttemplateutils',
    'ojs/ojresponsiveutils',
    'ojs/ojresponsiveknockoututils',
    'ojs/ojoffcanvas',
    'ojs/ojknockout',
    'ojs/ojbutton',
    'ojs/ojtoolbar',
    'ojs/ojmenu',
    'ojs/ojdialog',
    'ojs/ojselectcombobox',
    'ojs/ojbutton'
], function(oj, ko, $, appViewModel, cache, KnockoutTemplateUtils, ResponsiveUtils, ResponsiveKnockoutUtils, OffcanvasUtils) {
    "use strict";

    /**
     * The view model for the header module
     */
    var viewModel = function() {
        var self = this;

        // Need to add this to make it accessible to the view (index.html)
        this.KnockoutTemplateUtils = KnockoutTemplateUtils;

        // Header
        // Application Name used in Branding Area
        self.appName = ko.observable(appViewModel.config.applicationName);

        // User Info used in Global Navigation area
        self.userLogin = ko.observable(appViewModel.getUserInformation());

        // Media queries for repsonsive layouts
        var smQuery = ResponsiveUtils.getFrameworkQuery(ResponsiveUtils.FRAMEWORK_QUERY_KEY.SM_ONLY);
        self.smScreen = ResponsiveKnockoutUtils.createMediaQueryObservable(smQuery);
        var mdQuery = ResponsiveUtils.getFrameworkQuery(ResponsiveUtils.FRAMEWORK_QUERY_KEY.MD_UP);
        self.mdScreen = ResponsiveKnockoutUtils.createMediaQueryObservable(mdQuery);

        // Drawer
        // Close offcanvas on medium and larger screens
        self.mdScreen.subscribe(function() {
            OffcanvasUtils.close(self.drawerParams);
        });

        //click listener for actions in menu
        self.clickListener = function(event) {
            switch (event.target.value) {
                case 'logout':
                    cache.delete('Authorization');
                    window.location = '/login.html';
                    break;
            }
        };

        self.drawerParams = {
            displayMode: 'push',
            selector: '#navDrawer',
            content: '#pageContent'
        };

        // Called by navigation drawer toggle button and after selection of nav drawer item
        self.toggleDrawer = function() {
            return OffcanvasUtils.toggle(self.drawerParams);
        };

        self.router = appViewModel.router;
        self.navDataProvider = appViewModel.navDataProvider;
    };

    return viewModel;
});