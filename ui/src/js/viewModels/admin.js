define([
  "knockout",
  "ojs/ojarraydataprovider",
  "./../services/client",
  "ojs/ojkeyset",
  "ojs/ojtable",
  "ojs/ojbutton",
  "ojs/ojdialog",
  "css!./../../css/modules/admin.css"
], function (ko, ArrayDataProvider, client, keyset) {
  "use strict";
  const adminViewModel = function () {
    let self = this;
    //
    let paramProperties = {
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
          uri: "Users.PostUser",
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
          uri: "Users.UpdateUser",
        }
      },

      groups: {
        create: {
         getPayload: function () {
            let payload = {};
            payload.name = self.nameSelected();
            return payload;
          },
          uri: "Groups.CreateGroup",
        },

        update: {
         getPayload: function () {
            let payload = {};
            payload.id = self.idSelected();
            payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
            return payload;
          },
          uri: "Groups.UpdateGroup",
        }
      },

      status: {
          create: {
            getPayload: function () {
               let payload = {};
               payload.name = self.nameSelected();
               return payload;
             },
             uri: "Status.CreateStatus",
           },
   
           update: {
            getPayload: function () {
               let payload = {};
               payload.id = self.idSelected();
               payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
               return payload;
             },
          uri: "Status.UpdateStatus",
        }
      },

      resolutions: {
        create: {
          getPayload: function () {
             let payload = {};
             payload.name = self.nameSelected();
             return payload;
           },
           uri: "Resolutions.CreateResolution",
         },
 
         update: {
          getPayload: function () {
             let payload = {};
             payload.id = self.idSelected();
             payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
             return payload;
           },
          uri: "Resolutions.UpdateResolution",
        }
      },

      severities: {
        create: {
          getPayload: function () {
             let payload = {};
             payload.name = self.nameSelected();
             return payload;
           },
           uri: "Severities.CreateSeverity",
         },
 
         update: {
          getPayload: function () {
             let payload = {};
             payload.id = self.idSelected();
             payload.name = self.selectedValue().first_name !== self.nameSelected() ?  self.nameSelected() : undefined;
             return payload;
           },
          uri: "Severities.UpdateSeverity",
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
        id: "ticket types",
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
    //self.searchByName = ko.observable("");
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

    // fuctions for data
    self.getData = (segment) => {
      return self.dataResult()[segment];
    };

    self.openDialog = (event) => {
      self.buttonClicked(event.currentTarget.id);
      self.setAttributes();
      document.getElementById("modalDialog").open();
    };

    self.close = (event) => {
      document.getElementById("modalDialog").close();
    };

    //inputs atributes
    self.setAttributes = () => {
      self.errorMessage("");
      if (self.buttonClicked() === "update") {
        if (self.selectedItem() !== "users") {
          self.nameSelected(self.selectedValue().name);
        } else {
          self.idSelected(self.selectedValue().id);
          self.nameSelected(self.selectedValue().first_name);
          self.lastNameSelected(self.selectedValue().last_name);
          self.emailSelected(self.selectedValue().email);
          self.passwordSelected(self.selectedValue().password);
        }
      } else {
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
        tableData = self.getData("users");
        self.arrayTableFields(tableData);
      });
    };

    //main data
    self.refresh();

    self.selectedItem.subscribe(() => {
      switch (self.selectedItem()) {
        case "users":
          tableData = self.getData("users");
          self.arrayTableFields(tableData);
          break;
        case "groups":
          tableData = self.getData("groups");
          self.arrayTableFields(tableData);
          break;
        case "status":
          tableData = self.getData("status");
          self.arrayTableFields(tableData);
          break;
        case "resolutions":
          tableData = self.getData("resolutions");
          self.arrayTableFields(tableData);
          break;
        case "ticket types":
          tableData = self.getData("ticket_types");
          self.arrayTableFields(tableData);
          break;
        case "severities":
          tableData = self.getData("severities");
          self.arrayTableFields(tableData);
          break;
      }
    });

    self.tableArrayDataProvider = new ArrayDataProvider(self.arrayTableFields, {
      keyAttributes: "id",
    });

    //selected row
    self.selectedListener = function (event) {
      self.selectedValue(event.detail.value.data);
    };

    //function to create a new element
    self.sendInfo = async () => {
      let action = self.buttonClicked();
      let selected = self.selectedItem();
      let objectToSend = paramProperties[selected][action].getPayload();
      try {
        await client.invoke(paramProperties[selected].create.uri, objectToSend);
        self.refresh();
        self.close();
      } catch (error) {
        self.errorMessage(error.responseJSON.message);
      }
    };

    //search functionality
    /*self.resultSet = ko.observableArray([]);
    self.searchByName.subscribe(() => {
      let nameSearch = "name";
      if (self.selectedItem() === "users") {
        nameSearch = "first_name";
      }
      self.resultSet(
        tableData.filter((item) => {
          return (
            item[nameSearch].toLowerCase().indexOf(self.searchByName()) >= 0
          );
        })
      );
      console.log(self.resultSet());
    });*/
  };

  return adminViewModel;
});
