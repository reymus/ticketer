define(['knockout', './../services/client','./../process' ,'ojs/ojarraydataprovider', 'ojs/ojdatacollection-utils',
'ojs/ojbutton', 'ojs/ojinputtext','ojs/ojlabelvalue', 'ojs/ojlabel', 'ojs/ojdatetimepicker', 
'ojs/ojtable', 'ojs/ojradioset', 'ojs/ojknockout', 'ojs/ojselectcombobox', 'ojs/ojswitch' ,'ojs/ojformlayout','ojs/ojselectsingle'],
function(ko, client, process, ArrayDataProvider, DataCollectionEditUtils) {
  "use strict";

  const TicketViewModel = function(viewParams) {

    let self = this;

    self.editorMode = ko.observable('create');
    self.title = ko.observable();
    
    self.getTicket = async function(ticketId){
      //let answer = prompt('Por favor ingresa el número de ticket');
      let ticket = await client.invoke('Tickets.GetTicket', {
        id: ticketId,
        flatten: false
      });
      self.editorMode('read')
      self.summary(ticket.summary);
      self.description(ticket.description);
      self.ticketSeverity(ticket.severity.id);
      self.ticketStatus(ticket.status.id);
      self.ticketType(ticket.type.id);
      self.owner(ticket.owner.id);
      self.creationDate(ticket.created_at)
    }

    if (viewParams.id) {
      self.editorMode('read');
      self.getTicket(viewParams.id);
    }

    switch (self.editorMode()) {
      case 'create': {
        self.title("Create Ticket");
        break;
      }
      case 'read': {
        self.title(`Ticket ${viewParams.id}`);
        break;
      }
      case 'edit': {
        self.title(`Ticket ${viewParams.id}`);
        break;
      }
    }

    self.summary = ko.observable('');
    self.description = ko.observable('');
    self.creationDate = ko.observable();

    self.ticketTypes = ko.observableArray();
    self.ticketTypeOpts = new ArrayDataProvider(self.ticketTypes, { keyAttributes: 'value' });
    self.ticketType = ko.observable();
    self.ticketTypeLabel = function(){
      for(var i=0; i<self.ticketTypeOpts.length; i++){
        if(self.ticketTypeOpts[i].value == self.ticketType()){
          return self.ticketTypeOpts[i].label
        }
      }
      return ''
    }
    self.severities = ko.observableArray();
    self.ticketSeverityOpts = new ArrayDataProvider(self.severities, { keyAttributes: 'value' });
    self.ticketSeverity = ko.observable();  
    self.ticketSeverityLabel = function(){
      for(var i=0; i<self.ticketSeverityOpts.length; i++){
        if(self.ticketSeverityOpts[i].value == self.ticketSeverity()){
          return self.ticketSeverityOpts[i].label
        }
      }
      return '';
    }
    
    self.status = ko.observableArray();
    self.ticketStatusOpts = new ArrayDataProvider(self.status, { keyAttributes: 'value' });
    self.ticketStatus = ko.observable();   
    self.ticketStatusLabel = function(){
      for(var i=0; i<self.ticketStatusOpts.length; i++){
        if(self.ticketStatusOpts[i].value == self.ticketStatus()){
          return self.ticketStatusOpts[i].label
        }
      }
      return '';
    }

    self.owners = ko.observableArray();
    self.ownerOpts = new ArrayDataProvider(self.owners, { keyAttributes: 'value' });
    self.owner = ko.observable();
    self.ownerLabel = function(){
      for(var i=0; i<self.ownerOpts.length; i++){
        if(self.ownerOpts[i].value == self.owner()){
          return self.ownerOpts[i].label
        }
      }
      return '';
    }

    self.submitTicket = async function(){
      let now = new Date();
      let info = {
        id: viewParams.id,
        summary: self.summary(),
        description: self.description(),
        type: self.ticketType(),
        severity: self.ticketSeverity(),
        status: self.ticketStatus(),
        owner: self.owner(),
        created_by: self.owner(),
        created_at: now.toISOString().replace("T"," ").replace("Z"," ")
      }
      console.log(info);
      self.editorMode('read');
      if(self.editorMode() == "create"){
        //create ticket method from client should be invoked here
        let answer = await client.invoke('Tickets.PostTicket',info);
      }else if(self.editorMode() == "edit"){
        //update ticket method from client should be invoked here
        let answer = await client.invoke('Tickets.PatchTicket',info);
      }
    }

    self.changeToEditMode = function(){
      self.editorMode('edit');
    }

    self.clearForm = function(){
      self.summary('');
      self.description('');
      self.owner('');
      self.ticketSeverity('');
      self.ticketStatus('');
      self.ticketType('');
    }

    self.connected = async function() {
      let processData = await process.getProcess();
              
      processData.status.forEach((row)=>{
        self.status.push({value: row.id, label: row.name});
      });
      self.status.sort(function(x,y){return x.value-y.value});

      processData.severities.forEach((row)=>{
        self.severities.push({value: row.id, label: row.name});
      });
      self.severities.sort(function(x,y){return x.value-y.value});

      processData.ticket_types.forEach((row)=>{
        self.ticketTypes.push({value: row.id, label: row.name});
      });
      self.ticketTypes.sort(function(x,y){return x.value-y.value});

      processData.users.forEach((row)=>{
        self.owners.push({value: row.id, label: (row.first_name+' '+row.last_name)});
      });
      self.owners.sort(function(x,y){return x.label-y.label});

      let tickets = await client.invoke('Tickets.GetAllTickets', {
        fields: ['id', 'owner', 'summary', 'type', 'created_by', 'status', 'severity'],
        sortBy: ['owner.email', 'id:DESC'],
        limit: 25,
        // We want to be able to show the results in a table nicely
        flatten: true
      });

      //  try {
      //   let invalid = await client.invoke('SampleInvalidPath.SampleInvalidEndpoint', {
      //     sortBy: 'owner'
      //   });
      //   // We don't expect to get this far...
      // } catch (err) {
      //   console.log(`InvalidEndpoint produced error: `);
      //   console.log(err);
      // }
    };
    
  };
  
  return TicketViewModel;
});
