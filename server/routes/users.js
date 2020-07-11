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
        if(req.body.password === "" || req.body.password === undefined || req.body.password === null){
            res.status(400).json({
                message: messages.PASSWORD_REQUIRED
            });
            return;
        }
        if(req.body.email === "" || req.body.email === undefined || req.body.email === null){
            res.status(400).json({
                message: messages.EMAIL_REQUIRED
            });
            return;
        }
        

        
        try {

            let emailExist = await controller.validateEmail(req.body.email);
            if(emailExist){
            res.status(400).json({
                message: messages.EMAIL_EXIST,
            });
            return;
            }
            let encrypted = encrypt(req.body.password);   
            req.body.password = encrypted;
            let user = await controller.createUserWithPassword(req.body);
            res.status(201).send(user);
        } catch (err) {
            res.status('500').json({
                message: err.message,
            }); 
            return;
        }        
    } catch (err) {
        res.status('500').json({
            message: err.message,
        });
        return;
    }
});

app.patch('/:id', authenticate, async(req, res)=>{
    try {
        let exist = await controller.getUserById(req.params.id);
        if(!exist){
             res.status('404').json({
                message: messages.NOT_FOUND
             });
             return;   
        }
        let user = await controller.updateUser(req.body, req.params.id);
        res.status(201).send(user);
    } catch (err) {
        res.status('500').json({
            message: err.message,
        });
    }
});
module.exports = app;