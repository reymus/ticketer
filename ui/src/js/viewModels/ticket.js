define([
  'knockout',
  './../appViewModel',
  './../model/ticket',
  './../process',
  'ojs/ojarraydataprovider'
  
], function (ko, app, Ticket, process, ArrayDataProvider) {
 
  const TicketViewModel = function(viewParams) {

    let self = this;

    self.editorMode = ko.observable('create');
    self.title = ko.observable();

    if (viewParams.id) {
      self.editorMode('view');
    }

    switch (self.editorMode()) {
      case 'create': {
        self.title("Create Ticket");
        break;
      }
      case 'view': {
        self.title(`Ticket ${viewParams.id}`);
        break;
      }
    }
    
    self.connected = function() {
      
    }
  };
  
  return TicketViewModel;
});
