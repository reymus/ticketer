const express = require('express');
const { encrypt } = require('./../util');
const messages = require('./../messages/errorMessages');
const app = express();
const controller = require('./../controllers/users');
const { authenticate } = require('../middleware/auth');

app.get('/', authenticate, async(req, res) => {
    try {
        let users = await controller.getUsers();
        res.send(users);
    } catch (err) {
        res.send(err);
    }
});

app.post('/', authenticate, async(req, res) => {

    try {
        let encrypted = encrypt(req.body.password);
        //validate email is missing

        if (encrypted == null) {
            res.status(400).json({
                message: messages.PASSWORD_REQUIRED
            });
            return;
        }
        req.body.password = encrypted;
        let user = await controller.createUser(req.body);
        if (user === 'success') {
            res.status(201).send(user);
        }


    } catch (err) {
        res.status('500').json({
            message: err.message,
        });
        return;
    }
});
module.exports = app;