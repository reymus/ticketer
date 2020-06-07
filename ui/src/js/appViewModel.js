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
      dashboard: { label: 'Dashboard', title: "Ticketer | Dashboard"  },
      incidents: { label: 'Incidents', title: "Ticketer | Incidents"  },
      customers: { label: 'Customers', title: "Ticketer | Customers"  },
      about:     { label: 'About', title: "Ticketer | About"  }
    });
    Router.defaults['urlAdapter'] = new Router.urlParamAdapter();


    self.loadModule = function () {
      // moduleConfig is used in the 'main' oj-module defined in
      // index.html. It maps the router module to a real module
      // descriptor.
      self.moduleConfig = ko.pureComputed(function () {
        var name = self.router.moduleConfig.name();
        var viewPath = 'views/' + name + '.html';
        var modelPath = 'viewModels/' + name;

        return moduleUtils.createConfig({ 
          viewPath: viewPath,
          viewModelPath: modelPath, 
          params: { 
            parentRouter: self.router 
          } 
        });
      });
    };

    // Navigation setup
    var navData = [
      {
          name: 'Tickets',
          id: 'tickets',
          iconClass: 'oj-navigationlist-item-icon demo-icon-font-24 fas fa-ticket-alt'
      },{
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
    document.getElementById('navDrawer').addEventListener("ojclose", function(event) {
      document.getElementById('drawerToggleButton').focus();
    });
  }

  return new AppViewModel();
});
