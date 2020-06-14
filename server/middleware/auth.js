const jwt = require('jsonwebtoken');
const messages = require('../messages/errorMessages');
const config = require('./../config')


let authenticate = (req, res, next) => {

    if (!config.validation.off) {

        let token = req.get('Authorization');
        jwt.verify(token, config.jwt.secret, (err, decoded) => {
            if (err) {
                console.log(err);
                res.status('401').json(err);
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