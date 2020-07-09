const express = require('express');

const controller = require('./../controllers/tickets');
const { fromPath, fromBody, getCommonParams } = require('./../util');
const { authenticate } = require('../middleware/auth');
const messages = require('../messages/errorMessages');

const logger = require('./../logger').getLogger("tickets");

const app = express();

app.get('/', authenticate, async(req, res) => {
    logger.info("GET /tickets/?", req.query);
    try {
        let params = getCommonParams(req);
        let results = await controller.getTickets(params);

        res.send(results);
    } catch (err) {
        res.send(err);
    }
});

app.get('/:id', authenticate, async(req, res) => {
    let id = fromPath(req, 'id');
    try {
        let params = getCommonParams(req);
        let result = await controller.getTicket(id, params);
        if (result === null) {
            res.status('404').json({
                message: messages.NOT_FOUND
            });
        }
        res.send(result);
    } catch (err) {
        //maybe create error log file instead of send error
 
        // TODO: DO NOT assume err.errno is defined.
        let message = messages.errors(err.errno);
        res.status('500').json({
            message: message,
        });

    }
});

app.post('/', authenticate, async(req, res) => {
    let body = req.body;
    //to do: validate body types values
    try {
        let result = await controller.createTicket(body);
        res.status(201).send(result);

    } catch (err) {
        logger.error(err);
        //maybe create error log file instead of send error
        res.status('500').json({
            message: err.message
        });
    }
});

app.patch('/:id', authenticate, async(req, res) => {
    let body = req.body;
    // to do validate body types values
    try {
        let exists = await controller.getTicket(req.params.id);
        logger.info(exists);
        if (exists === null) {
            res.status('404').json({
                message: messages.NOT_FOUND
            });
            return;
        }

        let result = await controller.updateTicket(body, req.params.id);
        res.status(201).send(result);
    } catch (err) {
        logger.error(err);
        //maybe create error log file instead of send error

        res.status('500').json({
            message: err.message,
        });
        return;
    }
});
module.exports = app;