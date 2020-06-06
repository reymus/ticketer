const express = require('express');
const { encryptData } = require('./../util');
const messages = require('./../messages/errorMessages');
const app = express();
const controller = require('./../controllers/users');

app.post('/', async(req, res) => {
    res.json({
        ok: 'true'
    });
});

module.exports = app;