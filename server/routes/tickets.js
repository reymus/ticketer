
const express = require('express');

const controller = require('./../controllers/tickets');
const { fromQuery } = require('./../util');

const app = express();

app.get('/', async (req, res) => {

	try {
		// TODO: Make the extraction of these params available for reuse
		let fields = fromQuery(req, 'fields');
		fields = fields.split(',');
		let sortBy = fromQuery(req, 'sortBy');
		sortBy = sortBy.split(',');
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



module.exports = app;