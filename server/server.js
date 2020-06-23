const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');

const logger = require('./logger').getLogger('server');

const app = express();

const config = require('./config');
const routes = require('./routes');
app.use(bodyParser.json());
app.use('/api', routes);

app.use(express.static(path.resolve(__dirname, 'public')));

app.listen(config.server.port, () => {
    console.log(`Server started listening port ${config.server.port}`);
});

process.on('uncaughtException', function(error) {
    logger.error(error);
});

process.on('unhandledRejection', function(reason, p) {
    logger.error(reason);
});


