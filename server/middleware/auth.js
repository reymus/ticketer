const jwt = require('jsonwebtoken');
const messages = require('../messages/errorMessages');
const config = require('./../config')


let authenticate = (req, res, next) => {
    // delte if for validate the token  this is  to prevent Paco have errors to consume the endpoints
    if (!config.validation.off) {

        let token = req.get('Authorization');
        jwt.verify(token, config.jwt.secret, (err, decoded) => {
            if (err) {
                res.status('401').json({
                    message
                });
            } else {
                req.user = decoded.user;
                next();
            }

        });
    } else {
        next();
    }

}

module.exports = {
    authenticate
}