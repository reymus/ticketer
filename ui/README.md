# ticketer UI

A Oracle JET based UI project for **ticketer** .

## Running the app
Being an Oracle JET based application, the UI leverages Oracle JET tooling to create a transcient HTTP server for development purposes.

First of all, make sure you have the Oracle JET CLI installed, otherwise, go ahead and install it:

```
npm install -g @oracle/ojet-cli
```

Noe start the development server using the `oject serve` command:

```
ojet serve --server-port=<desired-port>
```

It will first build the application and prepare it to be served, so wait until you see the server is ready:

```
Server ready: http://localhost:<desired-port>
```

Your default web browser will open automatically showing the application main page. If it doesn't, go ahead and navigate to the page manually.

From this point forward, any change you make in the app sources will be automatically detected and the page will be refreshed to reflect the changes.