
const mysql = require('mysql');

// Load database configuration
const { database: config } = require('../config');

// Get a connection pool to the database
var pool  = mysql.createPool(Object.assign({
  connectionLimit : 10
}, config));

/**
 * Obtains a connection from the connection pool
 */
const getConnection = () => {
  return new Promise((resolve, reject) => {
    pool.getConnection((err, connection) => {
      if (err) {
        reject(err);
      } else {
        resolve(connection);
      }
    });
  });
};

/**
 * Handle database produced errors.
 * TODO: Take this opportunity to peek into the errors
 * and sanityze, reformat, etc.
 * @param {*} error The error/exception produced
 * @param {*} reject The rejection callback, if the error was 
 *     produced within a promise context.
 */
const handleDatabaseError = (error, reject) => {
  //
  // ... do something with error
  //
  if (reject) {
    reject(error);
  } else {
    throw error;
  }
};

/**
 * Executes SQL statements such as SELECT, INSERT, UPDATE and DELETE.
 * 
 * @param {string} sql The SQL statement string
 * @param {Object|Array} params The parameters for the statement
 */
const query = async (sql, params) => {
  let connection = await getConnection();
  return new Promise((resolve, reject) => {
    
    let callback = (error, results, fields) => {
      // Close the connection
      connection.release();
      if (error) {
        handleDatabaseError(error, reject);
      }
      return resolve(results);
    };

    // Whether or not a params object was passed, 
    // use the right form of the query function
    if (params) {
      connection.query(sql, params, callback);
    } else {
      connection.query(sql, callback);
    }
  });
};

module.exports = {
  getConnection,
  query
};