const QueryModel = require('./../database/querymodel');
const { TicketTypes } = require('./../database/model');
const db = require('./../database');
const messages = require('../messages/errorMessages');


const getTicketType = async(id) =>{
  let querymodel = new QueryModel(TicketTypes);
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

const createTicketType = async(ticketType) => {
  let model = TicketTypes;
  let values= [];
  let entries = Object.entries(model.fields)
  entries.forEach(([key]) => {
    if(key !== 'id' && key in ticketType){
       values.push(`'${ticketType[key]}'`);
    }else{
      values.push('null');
    }
  });

  let query = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
  try {
    let ticketTypeInserted;
    let result = await db.query(query);
    if(result.insertId !== null){
       ticketTypeInserted = await getTicketType(result.insertId);
    }
    return ticketTypeInserted;
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

const updateTicketType = async(ticketType, id) =>{
  let model = TicketTypes;
  let entries = Object.entries(model.fields);
  let values= [];
  entries.forEach(([key]) => {
    if(key !== 'id' && key in ticketType){
       values.push(`${model.table}.${key} = '${ticketType[key]}'`);
    }
  });

  let query = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}='${id}'`;
  
  try {
    let updateResult = await db.query(query);
    let result = await getTicketType(id);
    return result; 
  } catch (e) {
    let message = messages.errors(e.errno);
      throw new Error(message);
  }
} ;

module.exports = {
   getTicketType,
   createTicketType,
   updateTicketType
};