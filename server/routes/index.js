const express = require('express');

const app = express();

app.use('/users', require('./users'));
app.use('/tickets', require('./tickets'));

app.all('*', (req, res) => {
    res.status(404).send({
        errorMessage: "The requested resource doesn't exist"
    });
});

module.exports = app;