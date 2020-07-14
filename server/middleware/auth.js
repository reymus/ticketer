const jwt = require('jsonwebtoken');
const path = require('path');
const config = require('./../config');
const logger = require('./../logger').getLogger("auth");

let authenticate = (req, res, next) => {
  if (config.validation.off) {
    next();
    return;
  }
  let token = req.get('Authorization');
  if (token && token !== 'null') {
    jwt.verify(token, config.jwt.secret, (err, decoded) => {
      if (err) {
        logger.info(err.message); 
        res.status('401').json(err);
      } else {
        req.user = decoded.user;
        next();
      }
    }); 
  } else {
    logger.info(`Unauthorized: ${req.path}`);
    res.sendStatus('401');
  }
};

module.exports = {
  authenticate
};