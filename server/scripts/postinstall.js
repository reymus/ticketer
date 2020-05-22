
const { exec } = require("child_process");
const fs = require("fs");

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

const deleteFile = (path) => {
  if (fs.existsSync(path)) {
    fs.unlinkSync(path);
  }
};

console.log('Updating Symlink to UI');

(async () => {
    deleteFile("public");
    await createSymLink('public', '.\\..\\ui\\src');
})();