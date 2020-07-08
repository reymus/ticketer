const express = require('express');

const app = express();

app.use('/login', require('./login'));
app.use('/users', require('./users'));
app.use('/tickets', require('./tickets'));
app.use('/process', require('./process'));
app.use('/queries', require('./queries'));
app.use('/login', require('./login'));
app.use('/status', require('./status'));
app.use('/severities', require('./severities'));
app.use('/resolutions', require('./resolutions'));
app.use('/tickettypes', require('./ticketTypes'));

app.all('*', (req, res) => {
    res.status(404).send({
        errorMessage: "The requested resource doesn't exist"
    });
});

module.exports = app;