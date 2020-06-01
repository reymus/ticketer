const express = require('express');

const controller = require('./../controllers/tickets');
const { fromPath, fromBody, getCommonParams } = require('./../util');
const messages = require('../messages/errorMessages');

const logger = require('./../logger').getLogger("tickets");

const app = express();

app.get('/', async(req, res) => {
    logger.info("GET /tickets/?", req.query);
    try {
        let params = getCommonParams(req);
        let results = await controller.getTickets(params);

        res.send(results);
    } catch (err) {
        res.send(err);
    }
})

app.get('/:id', async(req, res) => {
    let id = fromPath(req, 'id');
    try {
        let params = getCommonParams(req);
        let result = await controller.getTicket(id, params);
        if (result == null) {
            res.status('404').json({
                message: messages.NOT_FOUND
            });
        }
        res.send(result);
    } catch (err) {
        logger.error(err);
        //maybe create error log file instead of send error

        // TODO: DO NOT assume err.errno is defined.
        let message = messages.errors(err.errno);
        res.status('500').json({
            message: message,
        });

    }
});

app.post('/', async(req, res) => {
    let body = fromBody(req);
    try {
        let result = await controller.createTicket(body);

        if (result == null) {
            res.status('404').json({
                message: messages.NOT_FOUND
            });

        }

        res.status(201).send(result);

    } catch (err) {
        logger.error(err);
        //maybe create error log file instead of send error
        let message = messages.errors(err.errno);
        res.status('500').json({
            message: message,
        });
    }
});

app.patch('/:id', async(req, res) => {
    let body = fromBody(req);
    try {
        let result = await controller.updateTicket(body, req.params.id);
        if (result == null) {
            res.status('404').json({
                message: messages.NOT_FOUND

            });
            return;
        }

        res.status(201).send(result);
    } catch (err) {
        logger.error(err);
        //maybe create error log file instead of send error
        let message = messages.errors(err.errno);
        res.status('500').json({
            message: message,
        });
        return;
    }
});
module.exports = app;