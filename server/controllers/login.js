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
            return {
                token: false,
                message: messages.WRONG_USER_PASSWOR,
            };
        }
        let token = jwt.sign({ user: user.first_name }, 'qwerty', { expiresIn: 60 * 60 });
        return token;
    } catch (e) {
        let message = messages.WRONG_USER_PASSWOR;
        throw new Error(message);
    }

};
module.exports = {
    createToken
};