# ticketer server

The backend for ticketer.

## Application structure

```bash
$ tree src

├── config/              # Server configuration directory
├── controllers/         # Business logic controllers
├── database/            # Datbase connection and async interface
├── public/              # Symlink to the UI's src directory
├── routes/              # Routes definition
│   ...
│   └── index.js         # Top level routes
├── scripts/             # Setup and build related scripts
│   ...
│   └── postinstall.js   # npm postinstall script
├── util/                # Utility functions
└── server.js            # Server's entry point and application boorstrap

```
