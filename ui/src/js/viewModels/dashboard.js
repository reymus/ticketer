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
     self.modeViews = [
       {id: 'create', label: 'Crear'},
       {id: 'edit',    label: 'Editar'},
       {id: 'read',   label: 'Ver'}
     ];
     self.formMode = ko.observable('create');
     self.summary = ko.observable('');
     self.description = ko.observable('');
     self.ownerOpts = ([
       {label: 'Jesús', value: 'jesus'}, 
       {label: 'Marcelo', value: 'marcelo'}, 
       {label: 'Pake', value: 'pake'}
     ]);
     self.owner = ko.observable('');
     self.ownerLabel = function(){
       for(var i=0; i<self.ownerOpts.length; i++){
         if(self.ownerOpts[i].value == self.owner()){
           return self.ownerOpts[i].label
         }
       }
       return '';
     }
     
     self.ticketTypeOpts = ([
       {label: 'Bug', value: 'bug'}, 
       {label: 'Nueva herramienta', value: 'newFeature'}, 
       {label: 'Soporte al cliente', value: 'customerSupport'}
     ]);
     self.ticketType = ko.observable('');
     self.ticketTypeLabel = function(){
       for(var i=0; i<self.ticketTypeOpts.length; i++){
         if(self.ticketTypeOpts[i].value == self.ticketType()){
           return self.ticketTypeOpts[i].label
         }
       }
       return ''
     }

     self.ticketSeverityOpts = ([
       {label: 'Baja', value: 'low'}, 
       {label: 'Media', value: 'medium'}, 
       {label: 'Alta', value: 'high'},
       {label: 'Urgente', value: 'urgent'}
     ]);
     self.ticketSeverity = ko.observable('');  
     self.ticketSeverityLabel = function(){
       for(var i=0; i<self.ticketSeverityOpts.length; i++){
         if(self.ticketSeverityOpts[i].value == self.ticketSeverity()){
           return self.ticketSeverityOpts[i].label
         }
       }
       return '';
     }

     self.ticketStatusOpts = ([
       {label: 'Nuevo', value: 'new'}, 
       {label: 'En progreso', value: 'onprogress'}, 
       {label: 'Esperando información', value: 'waiting'},
       {label: 'Resuelto', value: 'solved'},
       {label: 'Cerrado', value: 'closed'},
     ]);
     self.ticketStatus = ko.observable('');  
     self.ticketStatusLabel = function(){
       for(var i=0; i<self.ticketStatusOpts.length; i++){
         if(self.ticketStatusOpts[i].value == self.ticketStatus()){
           return self.ticketStatusOpts[i].label
         }
       }
       return '';
     }
     self.creationDate = '30/05/2020';
     let sendMode = self.formMode()=='create' ? 'Crear' : 'Actualizar';
     self.sendForm = ko.observable(sendMode);

     self.submitForm = function(){
       let info = {
         title: self.summary(),
         description: self.description(),
         owner: self.owner(),
         ticketType: self.ticketType(),
         ticketSeverity: self.ticketSeverity(),
         ticketStatus: self.ticketStatus()
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

      self.connected = async function() {
        document.title = "Dashboard";
        // Implement further logic if needed

        let processData = await process.getProcess();
        console.log(`Process: `);
        
        console.log(`Status: `);
        console.table(processData.status);
        console.log(`Resolutions: `);
        console.table(processData.resolutions);
        console.log(`Severities: `);
        console.table(processData.severities);
        console.log(`Ticket Types: `);
        console.table(processData.ticket_types);

        let tickets = await client.invoke('Tickets.GetAllTickets', {
          fields: ['id', 'owner', 'summary', 'type', 'created_by', 'status', 'severity'],
          sortBy: ['owner.email', 'id:DESC'],
          limit: 25,
          // We want to be able to show the results in a table nicely
          flatten: true
        });

        console.log(`Tickets: `);
        console.table(tickets);

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
