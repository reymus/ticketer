define([
  "css!./../../css/modules/admin.css",
  "knockout",
  "ojs/ojarraydataprovider",
  "./../services/client",
  "ojs/ojkeyset",
  "ojs/ojtable",
  "ojs/ojbutton",
  "ojs/ojdialog",
], function (css, ko, ArrayDataProvider, client, keyset) {
  "use strict";
  const adminViewModel = function () {
    let self = this;
    //
    let information = {
      users: {
        create: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.first_name = self.nameSelected();
            payloadVariable.last_name = self.lastNameSelected();
            payloadVariable.email = self.emailSelected();
            payloadVariable.password = self.passwordSelected();
            return payloadVariable;
          },
          uri: "Users.PostUser",
        },
        edit: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.id = self.idSelected();
            self.selectedValue().first_name !== self.nameSelected() ? (payloadVariable.first_name = self.nameSelected()) : "";
            self.selectedValue().last_name !== self.lastNameSelected() ? (payloadVariable.last_name = self.lastNameSelected()) : "";
            self.selectedValue().email !== self.emailSelected() ? (payloadVariable.email = self.emailSelected()) : "";
            return payloadVariable;
          },
          uri: "Users.EditUser",
        }
      },

      groups: {
        create: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.first_name = self.nameSelected();
            return payloadVariable;
          },
          uri: "Groups.CreateGroup",
        },

        edit: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.id = self.idSelected();
            self.selectedValue().first_name !== self.nameSelected() ? (payloadVariable.first_name = self.nameSelected()) : "";
            return payloadVariable;
          },
          uri: "Groups.UpdateGroup",
        }
      },

      status: {
        create: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.first_name = self.nameSelected();
            return payloadVariable;
          },
          uri: "Status.CreateStatus",
        },

        edit: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.id = self.idSelected();
            self.selectedValue().first_name !== self.nameSelected() ? (payloadVariable.first_name = self.nameSelected()) : "";
            return payloadVariable;
          },
          uri: "Status.UpdateStatus",
        }
      },

      resolutions: {
        create: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.first_name = self.nameSelected();
            return payloadVariable;
          },
          uri: "Resolutions.CreateResolution",
        },

        edit: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.id = self.idSelected();
            self.selectedValue().first_name !== self.nameSelected() ? (payloadVariable.first_name = self.nameSelected()) : "";
            return payloadVariable;
          },
          uri: "Resolutions.UpdateResolution",
        }
      },

      severities: {
        create: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.first_name = self.nameSelected();
            return payloadVariable;
          },
          uri: "Severities.Createseverity",
        },

        edit: {
          payload: function () {
            let payloadVariable = {};
            payloadVariable.id = self.idSelected();
            self.selectedValue().first_name !== self.nameSelected() ? (payloadVariable.first_name = self.nameSelected()) : "";
            return payloadVariable;
          },
          uri: "Severities.Updateseverity",
        }
      }
    };

    //menu definition
    let data = [
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

    self.dataProvider = new ArrayDataProvider(data, { keyAttributes: "id" });

    //observable definition
    self.selectedItem = ko.observable("users");
    self.buttonClicked = ko.observable("");
    self.userFields = ko.observableArray();
    self.dataResult = ko.observable({});
    self.selectedValue = ko.observable({});
    self.tempSelectedValue = ko.observable({});
    self.searchByName = ko.observable("");
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

    self.open = (event) => {
      self.buttonClicked(event.currentTarget.id);
      self.setAttributes();
      document.getElementById("modalDialog").open();
    };

    self.close = (event) => {
      document.getElementById("modalDialog").close();
    };

    self.openInner = (event) => {
      document.getElementById("innerDialog").open();
    };

    //inputs atributes
    self.setAttributes = () => {
      self.errorMessage("");
      if (self.buttonClicked() === "edit") {
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
        self.userFields(tableData);
      });
    };

    //main data
    self.refresh();

    self.selectedItem.subscribe(() => {
      switch (self.selectedItem()) {
        case "users":
          tableData = self.getData("users");
          self.userFields(tableData);
          break;
        case "groups":
          tableData = self.getData("groups");
          self.userFields(tableData);
          break;
        case "status":
          tableData = self.getData("status");
          self.userFields(tableData);
          break;
        case "resolutions":
          tableData = self.getData("resolutions");
          self.userFields(tableData);
          break;
        case "ticket types":
          tableData = self.getData("ticket_types");
          self.userFields(tableData);
          break;
        case "severities":
          tableData = self.getData("severities");
          self.userFields(tableData);
          break;
      }
    });

    self.usersDataProvider = new ArrayDataProvider(self.userFields, {
      keyAttributes: "id",
    });

    //selected row
    self.selectedListener = function (event) {
      self.selectedValue(event.detail.value.data);
    };

    //function to create a new element
    self.create = async () => {
      let functionality = self.buttonClicked();
      let selected = self.selectedItem();
      let objectToSend = information[selected][functionality].payload();

      //self.nameSelected()
      console.log(information[selected][functionality].uri);
      try {
        await client.invoke(information[selected].create.uri, objectToSend);
        self.refresh();
        self.close();
      } catch (error) {
        self.errorMessage(error.responseJSON.message);
      }
    };

    //search functionality
    self.resultSet = ko.observableArray([]);
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
    });
  };

  return adminViewModel;
});
