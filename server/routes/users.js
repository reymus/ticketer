const express = require('express');

const app = express();

app.get('/', async (req, res) => {
  try {
    let users = await controller.getUsers();
    res.send(users);
  } catch (err) {
    res.send(err);
  }
});

module.exports = app;