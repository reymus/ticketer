const QueryModel = require('./../database/querymodel');
const { Users, Passwords } = require('./../database/model');
const db = require('./../database');
const messages = require('../messages/errorMessages');

const getUsers = async() => {
    let queryModel = new QueryModel(Users);
    let query = queryModel.select("*").build();
    let results = await db.query(query);
    return results;
};

const getUserByEmail = async(email) => {
    let queryModel = new QueryModel(Users);
    let query = queryModel.select("*").where('email').equals(email).build();
    let result = await db.query(query);
    return result[0];
};

const createUser = async(user) => {
    let model = Users;
    let values = [];
    let passwordValues = [];
    let fields = Object.keys(model.fields);

    if ("password" in user) {
        passwordValues.push("\'" + user.password + "\'");
    } else {
        let message = messages.PASSWORD_REQUIRED;
        throw new Error(message);
    }

    for (let i = 0; i < fields.length; i++) {
        if (fields[i] != 'id' && fields[i] in user) {
            values.push(`'${user[fields[i]]}'`);
        } else {
            values.push('null');
        }
    }


    let query = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
    let result;
    try {
        result = await db.query(query);
        passwordValues.unshift(result.insertId);
        passordResult = await insertPassword(passwordValues);
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }

    if (result.insertId != null) {
        //return the object created
        return 'success';
    }
}

const insertPassword = async(val) => {

    let result;
    let model = Passwords;
    val.unshift('null');
    let query = `INSERT INTO ${model.table} VALUES(${val.join(', ')})`;
    try {
        result = await db.query(query);
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }
    if (result.insertId != null) {
        //return the object created
        return result;
    }
};
module.exports = {
    createUser,
    getUserByEmail,
    getUsers
};