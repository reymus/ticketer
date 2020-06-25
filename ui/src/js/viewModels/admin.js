   define(['knockout', 'ojs/ojarraydataprovider'], function(ko, ArrayDataProvider) {
     'use strict';
     const adminViewModel= function() {
        let self = this;
         let data = [
            {
              name: "Groups",
              id: "groups",
              icon: "fa-fausers"
            },
            {
              name: "Users",
              id: "users",
              icon: "fa-fausers"
            },
            {
              name: "Ticket types",
              id: "ticketTypes",
              icon: "fa-fausers"
            },
            {
              name: "Status",
              id: "status",
              icon: "fa-fausers"
            },
            {
              name: "Resolutions",
              id: "resolutions",
              icon: "fa-fausers"
            },
          ];
          self.dataProvider = new ArrayDataProvider(data,{keyAttributes: 'id'});
          self.selectedItem = ko.observable('groups');
      }
    
    return adminViewModel;
   });
  