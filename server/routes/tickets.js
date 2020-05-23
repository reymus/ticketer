
const express = require('express');

const controller = require('./../controllers/tickets');
const { fromQuery } = require('./../util');

const app = express();

app.get('/', async (req, res) => {

	try {
		let max = fromQuery(req, 'max') || 10;
		let results = await controller.getTickets({
			max
		});

		res.send(results);
	} catch (err) {
		res.send(err);
	}
})



module.exports = app;