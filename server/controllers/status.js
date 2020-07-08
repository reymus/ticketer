const QueryModel = require('./../database/querymodel');
const { Status } = require('./../database/model');
const db = require('./../database');
const messages = require('../messages/errorMessages');
const logger = require('../logger');

const getStatus = async(id) =>{
  let querymodel = new QueryModel(Status);
  let query = querymodel.select('*').where('id').equals(id).build();
  try {
    let result = await db.query(query);
    if(result.length>0){
      return result[0];
    }else{
      return null;
    } 
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

const createStatus = async(status) => {
  let model = Status;
  let values= [];
  let entries = Object.entries(model.fields)
  entries.forEach(([key]) => {
    if(key != 'id' && key in status){
       values.push(`'${status[key]}'`);
    }else{
      values.push('null');
    }
  });

  let query = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
  try {
    let statusInserted;
    let result = await db.query(query);
    if(result.insertId != null){
       statusInserted = await getStatus(result.insertId);
    }
    return statusInserted;
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

const updateStatus = async(status, id) =>{
  let model = Status;
  let entries = Object.entries(model.fields)
  let values= [];
  entries.forEach(([key]) => {
    if(key != 'id' && key in status){
       values.push(`${model.table}.${key} = '${status[key]}'`);
    }
  });

  let query = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}='${id}'`;
  
  try {
    let updateResult = await db.query(query);
    let result = await getStatus(id);
    return result; 
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

module.exports = {
  getStatus,
  createStatus,
  updateStatus
}