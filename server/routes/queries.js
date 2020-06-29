const express = require('express');
const controller = require('./../controllers/queries');
const { authenticate } = require('../middleware/auth');
const logger = require('./../logger').getLogger("queries");

const app = express();

app.get('/', authenticate, async(req, res) => {
  try {
    let user = req.user;
    logger.info(`Geting all queries: ${JSON.stringify(user)}`);
    let queries = await controller.getQueries(user);
    res.send(queries);
  } catch (err) {
    res.send(err);
  }
});

app.get('/:queryId', authenticate, async(req, res) => {
  try {
    let user = req.user;
    logger.info(`Geting user query: ${req.params.queryId}`);
    let query = await controller.getUserQuery(req.params.queryId);
    res.send(query);
  } catch (err) {
    res.send(err);
  }
});

app.post('/', authenticate, async(req, res) => {
  try {
    let user = req.user;
    let params = req.body;
    if (!params.name) {
      res.status(400).send(`Missing required parameter 'name'`);
      return;
    }
    logger.info(`Saving user query: ${JSON.stringify(params)}`);
    let query = await controller.saveUserQuery(params, user);
    res.send(query);
  } catch (err) {
    res.send(err);
  }
});

module.exports = app;