const express = require('express');

const app = express();
const controller = require('./../controllers/login');
const logger = require('./../logger').getLogger('login.controller');

app.post('/', async(req, res) => {

    try {
        let token = await controller.authenticate(req.body);
        res.json({ token });
    } catch (err) {
        res.status('401').json({ message: err.message });
        return;
    }
});

module.exports = app;