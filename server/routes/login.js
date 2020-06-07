const express = require('express');
const { encryptData } = require('./../util');
const messages = require('./../messages/errorMessages');
const app = express();
const controller = require('./../controllers/login');
const jwt = require('jsonwebtoken');

app.post('/', async(req, res) => {

    try {

        let token = await controller.createToken(req.body);
        res.json({
            token
        });
    } catch (err) {
        console.log('cae aqui', err);
        res.send(err);
    }
});

module.exports = app;