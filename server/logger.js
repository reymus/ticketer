
const winston = require('winston');
const { format } = winston;
const { combine, timestamp, printf, errors } = format;

const chalk = require('chalk');

const config = require('./config');

const filterDisabled = format((info, opts) => {
  if (info.silent) {
    return false;
  }
  return info;
});

const errorStackFormat = format(info => {
  if (info instanceof Error) {
    return Object.assign({}, info, {
      stack: info.stack,
      message: info.message
    });
  }
  return info;
})

let consoleConfig = { 
  level: 'info',
  format: combine(
    errors({ stack: true }),
    filterDisabled(),
    timestamp(),
    format.colorize(),
    errorStackFormat(),
    printf(args => {
      let { level, message, timestamp, name, silent } = args;
      if (!silent) {
        return `${timestamp} ${chalk.yellow(name)} - ${level}: ${message}`;
      } else {
        return null;
      }      
    })
  )
};

const logger = winston.createLogger({
  levels: winston.config.syslog.levels,
  
  transports: [

    new winston.transports.Console(consoleConfig),

    new winston.transports.File({
      filename: config.logging.filename,
      level: 'info',
      format: combine(
        timestamp(),
        errorStackFormat(),
        printf(args => {
          let { level, message, timestamp, name } = args;
          return `${name} ${timestamp} ${level}: ${message}`;
        })
      ),
    })
  ]
});

const getLogger = (name) => {
  let childConfig = { 
    name,
    silent: !config.logging.console[name]
  };
  if (name === 'server') {
    childConfig.silent = false; // Always enabled
  }
  let child = logger.child(childConfig);
  return child;
};

module.exports = {
  getLogger
};