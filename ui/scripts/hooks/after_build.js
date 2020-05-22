'use strict';
const { exec } = require("child_process");

const createSymLink = (link, target) => {
  const command = `mklink /D ${link} ${target}`;
  return new Promise((resolve, reject) => {
    exec(command, (err, stdout, stderr) => {
      let error = err || stderr;
      if (error) {
          console.log(`error creating symlink: ${error.message}`);
          reject();
      }
      console.log(`${stdout}`);
      resolve();
    });
  });  
};

module.exports = async function(configObj) {
  return new Promise(async (resolve, reject) => {
    console.log("Running after_build hook.");
    console.log("--> Creating symlinks");

    await createSymLink("src\\js\\libs", ".\\..\\..\\web\\js\\libs");

    await createSymLink("src\\css\\alta", ".\\..\\..\\web\\css\\alta");

  	resolve(configObj);
  });
};
