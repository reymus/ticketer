
const { exec } = require("child_process");
const fs = require("fs");

const run = (command, cwd) => {
  return new Promise((resolve, reject) => {
    let params = { cwd: cwd };
     
    console.log(` - Executing '${command}' on '${cwd}'`);
    let callback = (err, stdout, stderr) => {
      let error = err || stderr;
      if (error) {
        console.log(`error: ${error.message || error}`);
        reject();
      } else {
        console.log(`${stdout}`);
        resolve();
      }
    };
    if (cwd) {
      exec(command, { cwd: cwd }, callback);
    } else {
      exec(command, callback);
    }    
  });
};

const install = (path) => {
  const command = `npm install --loglevel=error`;
  return run(command, path);
};

console.log('Building ticketer...');

(async () => {
  try {
    console.log(' - Building UI...');
    await install('.\\ui');
    await run('ojet build web', '.\\ui');
    console.log(' - Building Server...');
    await install('.\\server');

    console.log('Build finished.');
  } catch (err) {
    console.log(err);
  }
})();