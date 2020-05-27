const express = require('express');

const controller = require('./../controllers/tickets');
const { fromQuery, fromParam, fromBody } = require('./../util');
const messages = require('./../config/errorMessages');

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
    try {
        let result = await controller.getTicket(id);
        if (result == null) {
            res.status('404').json({
                message: messages.NOT_FOUND
            });
        }
        res.send(result);
    } catch (err) {
        res.send(err);
    }
});

app.post('/', async(req, res) => {
    let body = fromBody(req);
    try {
        let result = await controller.createTicket(body);

        if (result.affectedRows > 0) {
            res.status('204').send();

        } else {
            res.status('400').send();
        }

    } catch (err) {
        res.send(err);
    }
})

module.exports = app;