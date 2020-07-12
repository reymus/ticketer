define([
  "knockout",
  "ojs/ojarraydataprovider",
  "./../services/client",
  "ojs/ojkeyset",
  "ojs/ojasyncvalidator-regexp",
  "ojs/ojtable",
  "ojs/ojbutton",
  "ojs/ojdialog",
  "css!./../../css/modules/admin.css"
], function (ko, ArrayDataProvider, client, keyset, AsyncRegExpValidator) {
  "use strict";
  const adminViewModel = function () {
    let self = this;
    
    let ActionRegistry = {
      users: {
        create: {
         getPayload: function () {
            let payload = {};
            payload.first_name = self.nameSelected();
            payload.last_name = self.lastNameSelected();
            payload.email = self.emailSelected();
            payload.password = self.passwordSelected();
            return payload;
          },
          endpoint: "Users.CreateUser",
        },
        update: {
         getPayload: function () {
            let payload = {};
            payload.id = self.idSelected();
            payload.first_name = self.selectedValue().first_name !== self.nameSelected() ? self.nameSelected() : undefined;
            payload.last_name = self.selectedValue().last_name !== self.lastNameSelected() ?  self.lastNameSelected() : undefined;
            payload.email = self.selectedValue().email !== self.emailSelected() ? self.emailSelected() : undefined;
            return payload;
          },
          endpoint: "Users.UpdateUser",
        }
      },

      groups: {
        create: {
         getPayload: function () {
            let payload = {};
            payload.name = self.nameSelected();
            return payload;
          },
          endpoint: "Groups.CreateGroup",
        },

        update: {
         getPayload: function () {
            let payload = {};
            payload.id = self.idSelected();
            payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
            return payload;
          },
          endpoint: "Groups.UpdateGroup",
        }
      },

      status: {
          create: {
            getPayload: function () {
               let payload = {};
               payload.name = self.nameSelected();
               return payload;
             },
             endpoint: "Status.CreateStatus",
           },
   
           update: {
            getPayload: function () {
               let payload = {};
               payload.id = self.idSelected();
               payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
               return payload;
             },
          endpoint: "Status.UpdateStatus",
        }
      },

      resolutions: {
        create: {
          getPayload: function () {
             let payload = {};
             payload.name = self.nameSelected();
             return payload;
           },
           endpoint: "Resolutions.CreateResolution",
         },
 
         update: {
          getPayload: function () {
             let payload = {};
             payload.id = self.idSelected();
             payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
             return payload;
           },
          endpoint: "Resolutions.UpdateResolution",
        }
      },

      severities: {
        create: {
          getPayload: function () {
             let payload = {};
             payload.name = self.nameSelected();
             return payload;
           },
           endpoint: "Severities.CreateSeverity",
         },
 
         update: {
          getPayload: function () {
             let payload = {};
             payload.id = self.idSelected();
             payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
             return payload;
           },
          endpoint: "Severities.UpdateSeverity",
        }
      },
      ticket_types:{
        create: {
          getPayload: function () {
             let payload = {};
             payload.name = self.nameSelected();
             return payload;
           },
           endpoint: "TicketTypes.CreateTicketType",
         },
 
         update: {
          getPayload: function () {
             let payload = {};
             payload.id = self.idSelected();
             payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
             return payload;
           },
          endpoint: "TicketTypes.UpdateTicketType",
        }
      }
    };

    //menu definition
    let menuData = [
      {
        name: "Groups",
        id: "groups",
        icon: "fa fa-users",
      },
      {
        name: "Users",
        id: "users",
        icon: "fa fa-id-card",
      },
      {
        name: "Ticket types",
        id: "ticket_types",
        icon: "fa fa-file",
      },
      {
        name: "Status",
        id: "status",
        icon: "fa fa-stethoscope",
      },
      {
        name: "Resolutions",
        id: "resolutions",
        icon: "fa fa-check",
      },
      {
        name: "Severities",
        id: "severities",
        icon: "fa fa-exclamation-triangle",
      },
    ];

    self.menuDataProvider = new ArrayDataProvider(menuData, { keyAttributes: "id" });

    //observable definition
    self.selectedItem = ko.observable("users");
    self.buttonClicked = ko.observable("");
    self.arrayTableFields = ko.observableArray();
    self.dataResult = ko.observable({});
    self.selectedValue = ko.observable({});    
    self.nameSelected = ko.observable("");
    self.lastNameSelected = ko.observable("");
    self.emailSelected = ko.observable("");
    self.passwordSelected = ko.observable("");
    self.idSelected = ko.observable("");
    self.errorMessage = ko.observable("");
    self.selectedRow = ko.observable({
      row: new keyset.KeySetImpl(),
      column: new keyset.KeySetImpl(),
    });
    self.userColumns = ko.observableArray([
      { headerText: "id", field: "id" },
      { headerText: "Fisrt Name", field: "first_name" },
      { headerText: "Last Name", field: "last_name" },
      { headerText: "E-mail", field: "email" },
    ]);
    self.twoColumns = ko.observableArray([
      { headerText: "id", field: "id" },
      { headerText: "Name", field: "name" },
    ]);

    self.emailPatternValidator = ko.observableArray([
      new AsyncRegExpValidator({
        pattern:
          "[a-zA-Z0-9.!#$%&'*+\\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*",
        hint: "enter a valid email ",
        messageDetail: "Not a valid email format",
      })
    ]);

    // fuctions for data
    self.getData = (segment) => {
      let res = self.dataResult()[segment];
      return res;
    };

    self.openDialog = (event) => {
      self.buttonClicked(event.currentTarget.id);
      self.setAttributes();
      document.getElementById("modalDialog").open();
    };

    self.closeDialog = (event) => {
      document.getElementById("modalDialog").close();
    };

    //inputs atributes
    self.setAttributes = () => {
      self.errorMessage("");
      if (self.buttonClicked() === "update") {// validates if it's an update to get id
        if (self.selectedItem() !== "users") {// if it's different to users use the value name, otherwise use first and last name
            self.idSelected(self.selectedValue().id);
            self.nameSelected(self.selectedValue().name);
        } else {
          //equals to update and equals to users
          self.idSelected(self.selectedValue().id);
          self.nameSelected(self.selectedValue().first_name);
          self.lastNameSelected(self.selectedValue().last_name);
          self.emailSelected(self.selectedValue().email);
          self.passwordSelected(self.selectedValue().password);
        }
      } else {
        //different to update (create)
        self.nameSelected("");
        self.lastNameSelected("");
        self.emailSelected("");
        self.passwordSelected("");
      }
    };

    //table  section
    let tableData = [];
    self.refresh = () => {
      client.invoke("Process.GetProcessData").then((result) => {
        self.dataResult = ko.observable(result);
        tableData = self.getData(self.selectedItem());
        self.arrayTableFields(tableData);
      });
    };

    //main data
    self.refresh();

    self.selectedItem.subscribe(() => {
      let segment=self.selectedItem();
      tableData = self.getData(segment);
      self.arrayTableFields(tableData)
    });

    self.tableArrayDataProvider = new ArrayDataProvider(self.arrayTableFields, {
      keyAttributes: "id",
    });

    //selected row
    self.selectedListener = function (event) {
      self.selectedValue(event.detail.value.data);
      event.detail.value.key = null;
      event.detail.value.data = null;
    };

    //function to send new element
    self.sendInfo = async () => {
      let action = self.buttonClicked();
      let selected = self.selectedItem().replace(/\s/,'_');
      let objectToSend = ActionRegistry[selected][action].getPayload();
      try {
        await client.invoke(ActionRegistry[selected][action].endpoint, objectToSend);
        self.refresh();
        self.selectedValue({});
        self.closeDialog();
      } catch (error) {
        self.errorMessage(error.responseJSON.message);
      }
    };
    
  };

  return adminViewModel;
});
