const jwt = require('jsonwebtoken');
const messages = require('./../messages/errorMessages');

let authorization = (req, res, next) => {
    let token = req.get('Authorization');
    jwt.verify(token, 'qwerty', (err, decoded) => {
        if (err) {
            res.status('401').json({
                message: messages.INVALID_TOKEN
            });
        }
        req.user = decoded.user;
        next();
    });
}

module.exports = {
    authorization
}