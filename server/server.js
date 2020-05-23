
const path = require('path');
const express = require('express');

const app = express();

const config = require('./config');
const routes = require('./routes');
const db = require('./database');

app.use('/api', routes);

app.use(express.static(path.resolve(__dirname, 'public')));

app.listen(config.server.port, () => {
  console.log(`Server started listening port ${config.server.port}`);
});
