const QueryModel = require('./../database/querymodel');
const { Users, Passwords } = require('./../database/model');
const db = require('./../database');
const messages = require('../messages/errorMessages');
const logger = require('../logger');

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

const getUserById = async(id) => {
    let queryModel = new QueryModel(Users);
    let query = queryModel.select("*").where('id').equals(id).build();
    try {
        let result = await db.query(query);
        return result[0];
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);   
    }
};

const validateEmail = async (email) => {
    let queryModel =new QueryModel(Users);

    let query = queryModel.select("email").where('email').equals(email).build();
    try {
      let exist;  
      let result = await db.query(query);
      exist = result.length ? true : false ;
      return exist;
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);  
    }
}

const createUserWithPassword = async(user) => {
    try {
        let password = "'" + user.password + "'";
        let userResult = await createUser(user);
        let passwordResult = await createPassword(password, userResult);
        if (passwordResult.affectedRows === 1) {
             let userCreated = await getUserById(userResult);
            return userCreated;
        } else {
            let message = messages.UNABLE_TO_CREATE;
            throw new Error(message);
        }
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message);
    }
};

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
        return result.insertId;
    } else {
        let message = messages.UNABLE_TO_CREATE;
        throw new Error(message);
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
    } else {
        let message = messages.UNABLE_TO_CREATE;
        throw new Error(message);
    }
};

const updateUser = async (user, iduser) =>{
    let model = Users;
    let entries = Object.entries(model.fields);
    let values= [];
    
    entries.forEach(([key])=>{
        if(key != 'id' && key in user){
        values.push(`${model.table}.${key} ='${user[key]}'`);
        }
    });

    let sql = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}='${iduser}'`;

    try {
      let updateResult = await db.query(sql);
      let result = await getUserById(iduser) ;
      return result;
    } catch (e) {
        let message = messages.errors(e.errno);
        throw new Error(message); 
    }
};

module.exports = {
    createUserWithPassword,
    getUserByEmail,
    getUserById,
    validateEmail,
    updateUser,
    getUsers
};