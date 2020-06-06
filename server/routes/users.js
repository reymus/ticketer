const express = require('express');
const { encryptData } = require('./../util');
const messages = require('./../messages/errorMessages');
const app = express();
const controller = require('./../controllers/users');

app.get('/', async(req, res) => {
    try {
        let users = await controller.getUsers();
        res.send(users);
    } catch (err) {
        res.send(err);
    }
});

app.post('/', async(req, res) => {

    try {
        let encrypted = encryptData(req.body.password);
        //validate email is missing
        console.log(encrypted);
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