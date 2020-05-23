
const fs = require('fs');

let config = fs.readFileSync('./../config.json');
config = JSON.parse(config);

module.exports = config;
