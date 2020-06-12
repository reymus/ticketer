const usersController = require('./users');
const { Passwords } = require('./../database/model');
const db = require('./../database');
const bcrypt = require('bcrypt');
const messages = require('./../messages/errorMessages');
const QueryModel = require('./../database/querymodel');
const jwt = require('jsonwebtoken');
const config = require('./../config');

const authenticate = async(userData) => {
    let user = await validateCredentials(userData);
    let token = await createToken(user);
    return token;
};

const validateCredentials = async(data) => {
    let data_password = data.password;
    let email = data.email;

    try {
        let user = await usersController.getUserByEmail(email);
        let password = await getPassword(user.id);
        let match = await bcrypt.compare(data_password, password);

        if (match === false) {
            let message = messages.WRONG_USER_PASSWOR;
            throw new Error(message);
        }

        return user;
    } catch (e) {
        let message = messages.WRONG_USER_PASSWOR;
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

const getPassword = async(id) => {
    try {
        let queryModel = new QueryModel(Passwords);
        let query = queryModel.select("password").where('id_user').equals(id).build();
        let result = await db.query(query);
        return result[0].password;
    } catch (error) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }
};

module.exports = {
    authenticate
};