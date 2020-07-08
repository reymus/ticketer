const QueryModel = require('./../database/querymodel');
const { Severities } = require('./../database/model');
const db = require('./../database');
const messages = require('../messages/errorMessages');
const logger = require('../logger');

const getSeverity = async(id) =>{
  let querymodel = new QueryModel(Severities);
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

const createSeverity = async(severity) => {
  let model = Severities;
  let values= [];
  let entries = Object.entries(model.fields)
  entries.forEach(([key]) => {
    if(key != 'id' && key in severity){
       values.push(`'${severity[key]}'`);
    }else{
      values.push('null');
    }
  });

  let query = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
  try {
    let severityInserted;
    let result = await db.query(query);
    if(result.insertId != null){
       severityInserted = await getSeverity(result.insertId);
    }
    return severityInserted;
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

const updateSeverity = async(severity, id) =>{
  let model = Severities;
  let entries = Object.entries(model.fields)
  let values= [];
  entries.forEach(([key]) => {
    if(key != 'id' && key in severity){
       values.push(`${model.table}.${key} = '${severity[key]}'`);
    }
  });

  let query = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}='${id}'`;
  
  try {
    let updateResult = await db.query(query);
    let result = await getSeverity(id);
    return result; 
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

module.exports = {
  getSeverity,
  createSeverity,
  updateSeverity
}