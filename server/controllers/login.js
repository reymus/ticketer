const usersController = require('./users');
const { Passwords } = require('./../database/model');
const db = require('./../database');
const bcrypt = require('bcrypt');
const messages = require('./../messages/errorMessages');
const QueryModel = require('./../database/querymodel');
const jwt = require('jsonwebtoken');
const config = require('./../config');

const authenticate = async(userData) => {
    let user = await usersController.getUserByEmail(userData.email);
    let valid = await validateCredentials(user, userData.password);
    if (valid) {
        let token = await createToken(user);
        return token;
    } else {
        let message = messages.WRONG_USER_PASSWORD;
        throw new Error(message);
    }


};

const validateCredentials = async(user, dataPassword) => {
    try {
        let password = await getPassword(user.id);
        let match = await bcrypt.compare(dataPassword, password);
        return match;
    } catch (e) {
        let message = messages.WRONG_USER_PASSWORD;
        throw new Error(message);
    }

};

const createToken = (user) => {
    try {
        let token = jwt.sign({ user }, config.jwt.secret, { expiresIn: config.jwt.expire });
        return token;
    } catch (error) {
        let message = messages.TOKEN_UNAVAILABLE
        throw new Error(message);
    }
};

const getPassword = async(userId) => {
    try {
        let queryModel = new QueryModel(Passwords);
        let query = queryModel.select("password").where('user_id').equals(userId).build();
        let result = await db.query(query);
        if (result.length === 1) {
            return result[0].password;
        } else {
            let message = messages.UNABLE_TO_OBTAIN;
            throw new Error(message);
        }
    } catch (error) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }
};

module.exports = {
    authenticate
};