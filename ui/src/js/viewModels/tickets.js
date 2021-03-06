define([
  'knockout',
  './../appViewModel',
  './../model/ticket',
  './../process',
  './../services/client',

  'ojs/ojarraydataprovider', 
  'ojs/ojbootstrap', 
  'ojs/ojknockout', 
  'ojs/ojlistview',
  'ojs/ojavatar',
  'ojs/ojtable',
  'ojs/ojarraydataprovider',
  'ojs/ojcollectiontabledatasource',
  'ojs/ojcollectiondataprovider',
  'ojs/ojinputtext', 
  'ojs/ojlabel',
  'ojs/ojselectsingle',
  'ojs/ojmenu', 
  'ojs/ojoption', 
  'ojs/ojmenuselectmany',
  'ojs/ojcollapsible'
], function (ko, app, Ticket, process, client, ArrayDataProvider) {
  "use strict";

  const ViewModel = function() {
    let self = this;
    
    self.connected = async function() {
      self.refreshDataSource();

      let views = await client.invoke("Queries.GetQueries");
      self.views(views);
    };

    self.handleNewTicketClick = function() {
      app.navigate('ticket');
    };

    self.handleTicketNavigation = function(ticket) {
      app.navigate('ticket', ticket);
    };

    // The ids for the table columns to display (with defaults)
    self.selectedColumns = ko.observableArray(['id', 'summary', 'type', 'severity', 'owner', 'status']);
    
    // The column options to display (for the column selector)
    self.columns = ko.observableArray([
      { value: "id", label: "ID" },
      { value: "summary", label: "Summary" },
      { value: "description", label: "Description" },
      { value: "type", label: "Type" },
      { value: "status", label: "Status" },
      { value: "severity", label: "Severity" },
      { value: "owner", label: "Owner" },
      { value: "created_at", label: "Created At" },
      { value: "created_by", label: "Created By" },
      { value: "updated_at", label: "Updated At" },
      { value: "updated_by", label: "Updated By" },
      { value: "resolved_at", label: "Resolved At" },
      { value: "resolved_by", label: "Resolved By" },
      { value: "resolution", label: "Resolution" }
    ]);

    // All possible table columns
    let columnsDef = {
      id:       { "headerText": "ID",       "field": "id", "style": "width: 10%" }, 
      summary:  { "headerText": "Summary",  "field": "summary", "template": "summaryTemplate", "style": "width: 70%" }, 
      severity: { "headerText": "Severity", "field": "severity.name", "style": "width: 10%" }, 
      status:   { "headerText": "Status",   "field": "status.name", "style": "width: 10%" },
      owner:    { "headerText": "Owner",    "field": "owner", "template": "ownerTemplate", "style": "width: 10%" },
      type:     { "headerText": "Type",     "field": "type.name", "style": "width: 10%" }
    };
    
    self.handleColumnsSelected = function() {
      setTimeout(function() {
        self.refreshDataSource();
      });
    };

    
    self.views = ko.observable({
      system: [],
      user: []
    });

    self.selectedView = ko.observable();

    self.findQuery = function(viewId) {
      let views = self.views();
      let idx = views.system.findIndex(view => view.name === viewId);
      if (idx !== -1) {
        return views.system[idx];
      }
      idx = views.user.findIndex(view => view.name === viewId);
      if (idx !== -1) {
        return views.user[idx];
      }
      return null;
    };

    self.handleOpenView = function(viewId) {
      let view = self.findQuery(viewId);
      console.log(`Selected view: `, view);

      const toArray = val => Array.isArray(val) ? val : (val ? [val] : val);

      if (view) {
        self.selectedView(view);
        self.selectedStatus(toArray(view.filters.status));
        self.selectedSeverity(toArray(view.filters.severity));
        self.selectedType(toArray(view.filters.type));
        self.filterText(view.filters.filtetText);

        if (view.filters.owner === '$current_user') {
          let user = app.authenticatedUser();
          self.selectedOwner(user.id);
        } else {
          self.selectedOwner(view.filters.owner);
        }
        // Others...
      } else {
        console.log(`Couldn't find view ${viewId}`);
      }
    };

    let columnComparator = (a, b) => {
      let columns = self.columns();
      let findIndex = function(field) {
        field = field.split('.')[0];
        return columns.findIndex(column => field === column.value);
      };
      return findIndex(a.field) - findIndex(b.field);
    };

    let findInOptions = (id, options) => {
      let idx = options.findIndex(option => option.value == id);
      return options[idx];
    };

    // The actual observable (computed, actually) to provide to the table
    self.viewColumns = ko.computed(function() {
      // Filter from all columns, only seelcted columns and use the right format
      return self.columns().filter(column => self.selectedColumns().includes(column.value)).map(column => {
        return columnsDef[column.value] || {
          headerText: column.label,
          field: column.value
        };
      }).sort(columnComparator);
    });

    // Text filter input
    self.filterText = ko.observable();

    // Owner selector... To be completed
    self.selectedOwner = ko.observable();

    // Status selector
    self.selectedStatus = ko.observable();
    self.statusOptions = ko.observableArray();
    self.statusDP = new ArrayDataProvider(self.statusOptions, { keyAttributes: 'value' });
    self.selectedStatusDisplay = ko.computed(function() {
      let options = self.statusOptions();
      let selection = self.selectedStatus();
      if (!selection) {
        return "";
      }
      if (!Array.isArray(selection)) {
        selection = [selection];
      }
      return selection.map(statusId => {
        let status = findInOptions(statusId, options);
        if (status) {
          return status.label;
        } else {
          console.log(`Status not found: ${statusId}`);
          return "";
        }
      }).join(', ');
    });

    // Severity selector
    self.selectedSeverity = ko.observable();
    self.severityOptions = ko.observableArray();
    self.severityDP = new ArrayDataProvider(self.severityOptions, { keyAttributes: 'value' });

    // Type selector
    self.selectedType = ko.observable();
    self.ticketTypeOptions = ko.observableArray();
    self.ticketTypeDP = new ArrayDataProvider(self.ticketTypeOptions, { keyAttributes: 'value' });

    // Fetch process information
    process.getProcess().then(function(processData) {
      let mapToOptions = e => { 
        return {
          label: e.name, 
          value: e.id 
        };
      };
      self.statusOptions(processData.status.map(mapToOptions));
      self.severityOptions(processData.severities.map(mapToOptions));
      self.ticketTypeOptions(processData.ticket_types.map(mapToOptions));
    });
    
    // Create the data source
    self.datasource = ko.observable();
    self.refreshDataSource = function() {
      // Need to recreate the data source, since we need the URL to change
      self.datasource(new oj.CollectionDataProvider(Ticket.newCollection({
        status: self.selectedStatus,
        severity: self.selectedSeverity,
        type: self.selectedType,
        owner: self.selectedOwner,
        'summary:like': self.filterText
      })));
    };

    // Used to render the name correctly in the table cell
    self.getOwner = function(data) {
      return data.first_name + " " + data.last_name;
    };

  };

  return ViewModel;
});
