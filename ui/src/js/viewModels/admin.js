   define([
     'css!./../../css/modules/admin.css',
     'knockout', 
     'ojs/ojarraydataprovider',
     './../services/client',
     'ojs/ojtable',
     'ojs/ojbutton',
     'ojs/ojdialog'
    ], function(css,ko, ArrayDataProvider, client) {
     'use strict';
     const adminViewModel= function() {
       
        let self = this;
        //menu definition
         let data = [
            {
              name: "Groups",
              id: "groups",
              icon: "fa fa-users"
            },
            {
              name: "Users",
              id: "users",
              icon: "fa fa-id-card"
            },
            {
              name: "Ticket types",
              id: "ticket types",
              icon: "fa fa-file"
            },
            {
              name: "Status",
              id: "status",
              icon: "fa fa-stethoscope"
            },
            {
              name: "Resolutions",
              id: "resolutions",
              icon: "fa fa-check"
            },
            {
              name: "Severities",
              id: "severities",
              icon: "fa fa-exclamation-triangle"
            }
          ];
          self.dataProvider = new ArrayDataProvider(data,{keyAttributes: 'id'});
          
          //observable definition 
          self.selectedItem = ko.observable('users');
          self.buttonClicked = ko.observable('');
          self.userFields = ko.observableArray();
          self.dataResult = ko.observable({});
          self.lastId = ko.observable();
          self.userColumns= ko.observableArray([
            {"headerText":"id", "field": "id"},
            {"headerText":"Fisrt Name", "field":"first_name"},
            {"headerText":"Last Name","field":"last_name"},
            {"headerText":"E-mail","field":"email"}
          ]);
          self.twoColumns= ko.observableArray([
            {"headerText":"id", "field": "id"},
            {"headerText":"Name", "field":"name"}
          ]);
          // fuctions for data
          self.getData = (segment) => {
            return self.dataResult()[segment];
          };

          self.getLastId = () => {   
          return self.userFields()[self.userFields().length-1].id+1;
          };
          //buttons section 
          self.open=(event)=>{
            self.buttonClicked(event.currentTarget.id);
            document.getElementById("modalDialog").open();
          };
          self.close=(event)=>{
            document.getElementById("modalDialog").close();
          };
          
          //table  section             
          let tableData = [];
          let lastId;
          client.invoke('Process.GetProcessData').then(async (result)=>{
            self.dataResult = ko.observable(result);
            tableData = self.getData('users');
            self.userFields(tableData);
            lastId = self.getLastId();
            self.lastId(lastId);       
          });
          
          self.selectedItem.subscribe(()=>{
            switch(self.selectedItem()){
              case 'users':
                tableData = self.getData('users');
                self.userFields(tableData);
                lastId = self.getLastId();
                self.lastId(lastId);
                break;
              case 'groups':
                  tableData = self.getData('groups');
                  self.userFields(tableData);
                  lastId = self.getLastId();
                  self.lastId(lastId);
                break;
              case 'status':
                  tableData = self.getData('status');
                  self.userFields(tableData);
                  lastId = self.getLastId();
                  self.lastId(lastId);
                break;
              case 'resolutions':
                  tableData = self.getData('resolutions');
                  self.userFields(tableData);
                  lastId = self.getLastId();
                  self.lastId(lastId);
                break;
              case 'ticket types':
                  tableData = self.getData('ticket_types');
                  self.userFields(tableData);
                  lastId = self.getLastId();
                  self.lastId(lastId);
                break;
              case 'severities':
                  tableData = self.getData('severities');
                  self.userFields(tableData);
                  lastId = self.getLastId();
                  self.lastId(lastId);
                break;
            }
          });
         
        
          self.usersDataProvider = new ArrayDataProvider(self.userFields,{keyAttributes: 'id'});
 
      };
    
    return adminViewModel;
   });
  