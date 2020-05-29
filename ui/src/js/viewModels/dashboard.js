/**
 * @license
 * Copyright (c) 2014, 2020, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * @ignore
 */
/*
 * Your dashboard ViewModel code goes here
 */
define(['knockout', './../services/client', './../process'],
 function(ko, client, process) {

    function DashboardViewModel() {
      var self = this;

      // Below are a set of the ViewModel methods invoked by the oj-module component.
      // Please reference the oj-module jsDoc for additional information.

      /**
       * Optional ViewModel method invoked after the View is inserted into the
       * document DOM.  The application can put logic that requires the DOM being
       * attached here.
       * This method might be called multiple times - after the View is created
       * and inserted into the DOM and after the View is reconnected
       * after being disconnected.
       */
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
