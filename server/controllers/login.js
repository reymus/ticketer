const usersController = require('./users');
const bcrypt = require('bcrypt');
const messages = require('./../messages/errorMessages');
const jwt = require('jsonwebtoken');

const createToken = async(userData) => {
    let password = userData.password;
    let email = userData.email;

    try {
        let user = await usersController.getUserByEmail(email);
        let match = await bcrypt.compare(password, user.password);

        if (!match) {
            return false;
        }
        let token = jwt.sign({ user: user.first_name }, 'secret', { expiresIn: 60 * 60 });
        return token;
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }

};
module.exports = {
    createToken
};