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


const createUserWithPassword = async(user) => {
    let password;
    let userId;
    try {
        password = "'" + user.password + "'";
        let userResult = await createUser(user);
        userId = userResult.insertId;
        let passwordResult = await createPassword(password, userId);
        if (passwordResult.affectedRows === 1) {
            //return user created is needed
            return 'success';
        }
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }
}

const createUser = async(user) => {
    let model = Users;
    let values = [];

    let fields = Object.keys(model.fields);
    for (let i = 0; i < fields.length; i++) {
        if (fields[i] != 'id' && fields[i] in user) {
            values.push(`'${user[fields[i]]}'`);
        } else {
            values.push('null');
        }
    }

    let query = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
    let result;
    let userId;
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
}

const createPassword = async(password, userId) => {

    let result;
    let model = Passwords;
    let query = `INSERT INTO ${model.table} VALUES(${userId},${password})`;
    try {
        result = await db.query(query);
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }
    if (result.insertId != null) {
        return result;
    }
};
module.exports = {
    createUserWithPassword,
    getUserByEmail,
    getUsers
};