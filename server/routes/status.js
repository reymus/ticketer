const express = require('express');
const {authenticate} = require('./../middleware/auth');
const messages = require('./../messages/errorMessages');
const controller = require('./../controllers/status') ;
const app = express();

app.get('/:id', authenticate, async (req, res)=>{
  try {
     let status = await controller.getStatus(req.params.id);
     if (status === null) {
           res.status('404').json({
          message: messages.NOT_FOUND
        });
        return;
      }
      res.status(200).send(status);
  } catch (e) {
    let message = messages.errors(e.errno);
        res.status('500').json({
            message: message,
        });
  }
});

app.post('/', authenticate, async (req, res)=>{
    try {
          if(Object.keys(req.body).length === 0){
            res.status('400').json({
              message: messages.VALUE_NOT_EXIST
            });
            return;
          }
          let newStatus = await controller.createStatus(req.body);
          res.status(201).send(newStatus);
    } catch (e) {
      let message = messages.errors(e.errno);
        res.status('500').json({
            message: message,
        });
    }
});

app.patch('/:id', authenticate, async (req, res)=>{
    try {
      if(Object.keys(req.body).length === 0){
        res.status('400').json({
          message: messages.VALUE_NOT_EXIST
        });
        return;
      }
      
      let status = await controller.updateStatus(req.body, req.params.id);
      res.status(201).send(status);
    } catch (e) {
      let message = messages.errors(e.errno);
      res.status('500').json({
          message: message,
      });
    }
});

module.exports = app;