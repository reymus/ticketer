const express = require('express');
const controller = require('./../controllers/process');

const app = express();

app.get('/', async (req, res) => {
  try {
    let data = await controller.getProcessData();
    res.send(data);
  } catch (err) {
    res.send(err);
  }
})

module.exports = app;
