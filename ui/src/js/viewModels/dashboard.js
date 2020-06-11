/**
 * @license
 * Copyright (c) 2014, 2020, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * @ignore
 */
/*
 * Your dashboard ViewModel code goes here
 */

define(['knockout', './../services/client','./../process' ,'ojs/ojarraydataprovider', 'ojs/ojdatacollection-utils',
'ojs/ojbutton', 'ojs/ojinputtext','ojs/ojlabelvalue', 'ojs/ojlabel', 'ojs/ojdatetimepicker', 
'ojs/ojtable', 'ojs/ojradioset', 'ojs/ojknockout', 'ojs/ojselectcombobox', 'ojs/ojswitch' ,'ojs/ojformlayout'],
function(ko, client, process, ArrayDataProvider, DataCollectionEditUtils) {

  function DashboardViewModel() {
    let self = this;
    process.getProcess().then((processData)=>{

    });
    
    self.modeViews = [
      {id: 'create', label: 'Crear'},
      {id: 'edit',    label: 'Editar'},
      {id: 'read',   label: 'Ver'}
    ];
    self.formMode = ko.observable('create');
    self.summary = ko.observable('');
    self.description = ko.observable('');
    self.creationDate = ko.observable();
    self.ticketTypeOpts = ko.observableArray([{value:'', id:0}]);
    self.ticketType = ko.observable('');
    self.ticketTypeLabel = function(){
      for(var i=0; i<self.ticketTypeOpts.length; i++){
        if(self.ticketTypeOpts[i].value == self.ticketType()){
          return self.ticketTypeOpts[i].label
        }
      }
      return ''
    }

    self.ticketSeverityOpts = ko.observableArray([{value: '', id:0}]);
    self.ticketSeverity = ko.observable('');  
    self.ticketSeverityLabel = function(){
      for(var i=0; i<self.ticketSeverityOpts.length; i++){
        if(self.ticketSeverityOpts[i].value == self.ticketSeverity()){
          return self.ticketSeverityOpts[i].label
        }
      }
      return '';
    }

    self.ticketStatusOpts = ko.observableArray([{value: '', id:0}]);
    self.ticketStatus = ko.observable('');   
    self.ticketStatusLabel = function(){
      for(var i=0; i<self.ticketStatusOpts.length; i++){
        if(self.ticketStatusOpts[i].value == self.ticketStatus()){
          return self.ticketStatusOpts[i].label
        }
      }
      return '';
    }

    self.ownerOpts = ko.observableArray([]);
    self.owner = ko.observable('');
    self.ownerLabel = function(){
      for(var i=0; i<self.ownerOpts.length; i++){
        if(self.ownerOpts[i].value == self.owner()){
          return self.ownerOpts[i].label
        }
      }
      return '';
    }

    self.submitTicket = function(){
      let info = {
        title: self.summary(),
        description: self.description(),
        owner: self.owner(),
        ticketType: self.ticketType(),
        ticketSeverity: self.ticketSeverity(),
        ticketStatus: self.ticketStatus()
      }
      if(self.formMode() == "create"){
        //create ticket method from client should be invoked here
      }else if(self.formMode() == "edit"){
        //update ticket method from client should be invoked here
      }
      console.log(info);
    }


    self.clearForm = function(){
      self.summary('');
      self.description('');
      self.owner('');
      self.ticketSeverity('');
      self.ticketStatus('');
    }

    self.getTicket = async function(){
      let answer = prompt('Por favor ingresa el número de ticket');
      console.log(answer);
      let ticket = await client.invoke('Tickets.GetTicket', {
        id: answer,
        flatten: false
      });
      console.log(ticket);
      self.formMode('read')
      self.summary(ticket.summary);
      self.description(ticket.description);
      self.ticketSeverity(ticket["severity.id"]);
      self.ticketStatus(ticket["status.id"]);
      self.ticketType(ticket["type.id"]);
      self.owner(ticket["owner.id"]);
      self.creationDate(ticket["created_at"])
      

      
    }

    self.connected = async function() {
      document.title = "Dashboard";
        // Implement further logic if needed

      let processData = await process.getProcess();
      console.log(`Process: `);
              
      processData.status.forEach((row)=>{
        self.ticketStatusOpts.push({value: row.id, label: row.name});
      });
      
      processData.severities.forEach((row)=>{
        self.ticketSeverityOpts.push({value: row.id, label: row.name});
      });

      processData.ticket_types.forEach((row)=>{
        self.ticketTypeOpts.push({value: row.id, label: row.name});
      });

      processData.users.forEach((row)=>{
        self.ownerOpts.push({value: row.id, label: (row.first_name+' '+row.last_name)});
      });

        // console.log(`Status: `);
        // console.table(processData.status);
        // console.log(`Resolutions: `);
        // console.table(processData.resolutions);
        // console.log(`Severities: `);
        // console.table(processData.severities);
        // console.log(`Ticket Types: `);
        // console.table(processData.ticket_types);

        let tickets = await client.invoke('Tickets.GetAllTickets', {
          fields: ['id', 'owner', 'summary', 'type', 'created_by', 'status', 'severity'],
          sortBy: ['owner.email', 'id:DESC'],
          limit: 25,
          // We want to be able to show the results in a table nicely
          flatten: true
        });

        // console.log(`Tickets: `);
        // console.table(tickets);

        try {
          let invalid = await client.invoke('SampleInvalidPath.SampleInvalidEndpoint', {
            sortBy: 'owner'
          });
          // We don't expect to get this far...
        } catch (err) {
          console.log(`InvalidEndpoint produced error: `);
          console.log(err);
        }
      };

      /**
       * Optional ViewModel method invoked after the View is disconnected from the DOM.
       */
      self.disconnected = function() {
        // Implement if needed
      };

      /**
       * Optional ViewModel method invoked after transition to the new View is complete.
       * That includes any possible animation between the old and the new View.
       */
      self.transitionCompleted = function() {
        // Implement if needed
      };
    }

    /*
     * Returns an instance of the ViewModel providing one instance of the ViewModel. If needed,
     * return a constructor for the ViewModel so that the ViewModel is constructed
     * each time the view is displayed.
     */
    return DashboardViewModel;
  }
);
