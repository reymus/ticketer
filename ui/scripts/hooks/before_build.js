'use strict';

const fs = require('fs');

module.exports = function (configObj) {
  return new Promise((resolve, reject) => {
    console.log("Running before_build hook.");
    
    console.log(" --> Deleting symlinks");
    const deleteFile = (path) => {
      if (fs.existsSync(path)) {
        fs.unlinkSync(path);
      }
    };
    deleteFile("./src/css/alta");
    deleteFile("./src/js/libs");

  	resolve(configObj);
  });
};
