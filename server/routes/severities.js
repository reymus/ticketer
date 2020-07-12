const express = require('express');
const {authenticate} = require('./../middleware/auth');
const messages = require('./../messages/errorMessages');
const controller = require('./../controllers/severities') ;
const app = express();

app.get('/:id', authenticate, async (req, res)=>{
  try {
     let severity = await controller.getSeverity(req.params.id);
     if (severity === null) {
           res.status('404').json({
          message: messages.NOT_FOUND
        });
        return;
      }
      res.status(200).send(severity);
  } catch (e) {
    let message = messages.errors(e.errno);
        res.status('500').json({
            message: message,
        });
  }
});

app.post('/', authenticate, async (req, res)=>{
  if(req.body.name === "" || req.body.name === undefined || req.body.name === null){
    res.status('400').json({
      message: messages.NAME_REQUIRED
    });
  }
    try {
          if(Object.keys(req.body).length === 0){
            res.status('400').json({
              message: messages.VALUE_NOT_EXIST
            });
            return;
          }
          let newSeverity = await controller.createSeverity(req.body);
          res.status(201).send(newSeverity);
    } catch (e) {
      let message = messages.errors(e.errno);
        res.status('500').json({
            message: message,
        });
    }
});

app.patch('/:id', authenticate, async (req, res)=>{
  if(req.body.name === "" || req.body.name === undefined || req.body.name === null){
    res.status('400').json({
      message: messages.NAME_REQUIRED
    });
  }
    try {
      if(Object.keys(req.body).length === 0){
        res.status('400').json({
          message: messages.VALUE_NOT_EXIST
        });
        return;
      }
      
      let severity = await controller.updateSeverity(req.body, req.params.id);
      res.status(201).send(severity);
    } catch (e) {
      let message = messages.errors(e.errno);
      res.status('500').json({
          message: message,
      });
    }
});

module.exports = app;