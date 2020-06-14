define([
  'text!./config.json',
  'knockout', 
  'ojs/ojmodule-element-utils', 
  'ojs/ojknockouttemplateutils', 
  'ojs/ojrouter', 
  'ojs/ojresponsiveutils', 
  'ojs/ojresponsiveknockoututils', 
  'ojs/ojarraydataprovider',
  'ojs/ojoffcanvas', 
  'ojs/ojmodule-element', 
  'ojs/ojknockout'
], function(config, ko, moduleUtils, KnockoutTemplateUtils, Router, ResponsiveUtils, ResponsiveKnockoutUtils, ArrayDataProvider, OffcanvasUtils) {
  "use strict";

  function AppViewModel() {
    var self = this;

    this.config = JSON.parse(config);

    document.title = config.applicationName;
    
    // Need to add this to make it accessible to the view (index.html)
    this.KnockoutTemplateUtils = KnockoutTemplateUtils;

    this.moduleUtils = moduleUtils;
    
    // Router setup
    self.router = Router.rootInstance;
    self.router.configure({
      tickets:   { label: 'Tickets', isDefault: true, title: "Ticketer | Tickets" },
      ticket:    { label: 'Ticket', title: "Ticketer | Ticket" },
      dashboard: { label: 'Dashboard', title: "Ticketer | Dashboard"  },
      incidents: { label: 'Incidents', title: "Ticketer | Incidents"  },
      customers: { label: 'Customers', title: "Ticketer | Customers"  },
      about:     { label: 'About',     title: "Ticketer | About"  }
    });
    Router.defaults.urlAdapter = new Router.urlParamAdapter();

    self.navigate = function(page, params) {
      self.pageParams = params || {};
      Router.rootInstance.go(page);
    };

    self.getNavigationParameters = function(routerParams) {
      let params = self.pageParams || {};
      return Object.assign({}, params, routerParams);
    };

    self.loadModule = function () {

      self.moduleConfig = ko.observable({ view: [], viewModel: null });
    
      // A computed observable which listens to the router's state change and
      // creates a module config Promise.
      var moduleConfigPromise = ko.pureComputed(
        function() {
          let router = Router.rootInstance;
          let value = router.stateId();
          return moduleUtils.createConfig({
            name: value,
            params: self.getNavigationParameters({
              parentRouter: router
            })
          });
        }.bind(this)
      );
  
      // When the given module config Promise is resolved, pass it to our own
      // this.moduleConfig observable.
      var updateConfig = function(currentConfigPromise) {
        currentConfigPromise.then(
          function(moduleConfig) {
            // Guard against multiple router state changes causing modules to load
            // out-of-order by comparing the returned config Promise against the
            // latest in the view model.
            if (currentConfigPromise === moduleConfigPromise.peek()) {
              this.moduleConfig(moduleConfig);
            }
          }.bind(this)
        );
      }.bind(this);

      // Update our moduleConfig with the initial value from the module config Promise
      updateConfig(moduleConfigPromise.peek());
      // When moduleConfigPromise udpates (due to router state change), tell it to
      // update our module config.
      moduleConfigPromise.subscribe(updateConfig.bind(this));
    };

    // Navigation setup
    var navData = [
      {
          name: 'Tickets',
          id: 'tickets',
          iconClass: 'oj-navigationlist-item-icon demo-icon-font-24 fas fa-ticket-alt'
      }, {
          name: 'Dashboard',
          id: 'dashboard',
          iconClass: 'oj-navigationlist-item-icon demo-icon-font-24 demo-chart-icon-24'
      }, {
          name: 'Incidents',
          id: 'incidents',
          iconClass: 'oj-navigationlist-item-icon demo-icon-font-24 demo-fire-icon-24'
      }, {
          name: 'Customers',
          id: 'customers',
          iconClass: 'oj-navigationlist-item-icon demo-icon-font-24 demo-people-icon-24'
      }, {
          name: 'About',
          id: 'about',
          iconClass: 'oj-navigationlist-item-icon demo-icon-font-24 demo-info-icon-24'
      }
    ];
    self.navDataProvider = new ArrayDataProvider(navData, { keyAttributes: 'id' });
    
    // Called by navigation drawer toggle button and after selection of nav drawer item
    self.toggleDrawer = function() {
      return OffcanvasUtils.toggle(self.drawerParams);
    };

    // Add a close listener so we can move focus back to the toggle button when the drawer closes
    document.getElementById('navDrawer').addEventListener("ojclose", function() {
      document.getElementById('drawerToggleButton').focus();
    });
  }

  return new AppViewModel();
});
