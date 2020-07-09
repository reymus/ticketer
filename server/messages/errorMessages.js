const NOT_FOUND = 'Reosurce not found';
const WRONG_PROPERTY = 'Incorrect property name in request';
const WRONG_VALUE = 'Incorrect property value in request';
const PASSWORD_REQUIRED = 'Password is required';
const UNKNOWN_ERROR = 'Unknown error';
const VALUE_NOT_EXIST = 'Value used  is not valid in request';
const WRONG_USER_PASSWORD = 'Invalid User or Password ';
const TOKEN_UNAVAILABLE = 'Can\'t create token';
const INVALID_TOKEN = 'Invalid token ';
const UNABLE_TO_CREATE = 'Unable to create';
const UNABLE_TO_OBTAIN = 'Unable to obtain';
const DUPLICATED_ENTRY = 'Duplicate entry';
const EMAIL_EXIST = 'The email already exist';

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
        case 1062:
            message = DUPLICATED_ENTRY;
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
    WRONG_USER_PASSWORD,
    INVALID_TOKEN,
    TOKEN_UNAVAILABLE,
    UNABLE_TO_CREATE,
    UNABLE_TO_OBTAIN,
    EMAIL_EXIST,
    errors
}