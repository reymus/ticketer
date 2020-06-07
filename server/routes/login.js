const express = require('express');

const app = express();
const controller = require('./../controllers/login');


app.post('/', async(req, res) => {

    try {
        let token = await controller.createToken(req.body);
        if (token.token == false) {
            res.status('400').json({ message: token.message });
            return;
        }
        res.json({ token });

    } catch (err) {

        res.status('400').json({ message: err.message });
        return;
    }
});

module.exports = app;