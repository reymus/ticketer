const QueryModel = require('./../database/querymodel');
const { Resolutions } = require('./../database/model');
const db = require('./../database');
const messages = require('../messages/errorMessages');
const logger = require('../logger');

const getResolution = async(id) =>{
  let querymodel = new QueryModel(Resolutions);
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

const createResolution = async(resolution) => {
  let model = Resolutions;
  let values= [];
  let entries = Object.entries(model.fields)
  entries.forEach(([key]) => {
    if(key != 'id' && key in resolution){
       values.push(`'${resolution[key]}'`);
    }else{
      values.push('null');
    }
  });

  let query = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
  try {
    let resolutionInserted;
    let result = await db.query(query);
    if(result.insertId != null){
       resolutionInserted = await getResolution(result.insertId);
    }
    return resolutionInserted;
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

const updateResolution = async(resolution, id) =>{
  let model = Resolutions;
  let entries = Object.entries(model.fields)
  let values= [];
  entries.forEach(([key]) => {
    if(key != 'id' && key in resolution){
       values.push(`${model.table}.${key} = '${resolution[key]}'`);
    }
  });

  let query = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}='${id}'`;
  
  try {
    let updateResult = await db.query(query);
    let result = await getResolution(id);
    return result; 
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

module.exports = {
  getResolution,
  createResolution,
  updateResolution
}