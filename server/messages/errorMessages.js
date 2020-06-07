const NOT_FOUND = 'Reosurce not found';
const WRONG_PROPERTY = 'Incorrect property name in request';
const WRONG_VALUE = 'Incorrect property value in request';
const PASSWORD_REQUIRED = 'Password is required';
const UNKNOWN_ERROR = 'Unknown error';
const VALUE_NOT_EXIST = 'Value used  is not valid in request';
const WRONG_USER_PASSWOR = 'Invalid User or Password ';
const INVALID_TOKEN = 'Invalid token ';

const errors = (code) => {
    let message = '';
    switch (code) {
        case 1054:
            message = WRONG_PROPERTY;
            break;
        case 1292:
        case 1366:
            message = WRONG_VALUE;
            break;
        case 1452:
            message = VALUE_NOT_EXIST;
            break;
        default:
            message = UNKNOWN_ERROR;
            break;
    }
    return message
}
module.exports = {
    NOT_FOUND,
    PASSWORD_REQUIRED,
    WRONG_USER_PASSWOR,
    INVALID_TOKEN,
    errors
}