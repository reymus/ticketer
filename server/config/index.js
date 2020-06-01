
const fs = require('fs');

let config = fs.readFileSync('./../config.json');

module.exports = JSON.parse(config);
