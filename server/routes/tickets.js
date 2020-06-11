const express = require('express');

const controller = require('./../controllers/tickets');
const { fromQuery, fromParam, fromBody } = require('./../util');
const messages = require('../messages/errorMessages');

const app = express();

app.get('/', async(req, res) => {

    try {
        // TODO: Make the extraction of these params available for reuse
        let fields = fromQuery(req, 'fields');
        if (fields != null) {
            fields = fields.split(',');
        }
        let sortBy = fromQuery(req, 'sortBy');
        if (sortBy != null) {
            sortBy = sortBy.split(',');
        }
        let offset = fromQuery(req, 'offset') || 0;
        let limit = fromQuery(req, 'limit') || 100;
        let flatten = fromQuery(req, 'flatten') || false;

        let results = await controller.getTickets({
            fields,
            sortBy,
            offset,
            limit,
            flatten
        });

        res.send(results);
    } catch (err) {
        res.send(err);
    }
})

app.get('/:id', async(req, res) => {
    let id = fromParam(req, 'id');
    let flatten = fromQuery(req, 'flatten') || false;
    try {
        let result = await controller.getTicket(id,flatten);
        if (result == null) {
            res.status('404').json({
                message: messages.NOT_FOUND
            });
        }
        res.send(result);
    } catch (err) {
        //maybe create error log file instead of send error
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

        }

        res.status(201).send(result);
    } catch (err) {
        //maybe create error log file instead of send error
        let message = messages.errors(err.errno);
        res.status('500').json({
            message: message,
        });
    }
});
module.exports = app;