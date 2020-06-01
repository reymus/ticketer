
const winston = require('winston');
const { format } = winston;
const { combine, timestamp, printf } = format;

const chalk = require('chalk');

const config = require('./config');

// Ignore log messages if they have { private: true }
const ignorePrivate = format((info, opts) => {
  if (info.silent) {
    return false;
  }
  return info;
});

let consoleConfig = { 
  level: 'info',
  format: combine(
    ignorePrivate(),
    timestamp(),
    format.colorize(),
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
        printf(args => {
          let { level, message, timestamp, name } = args;
          //console.log('-----', args);
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
}

const getLogger1 = (name) => {
  let child = logger.transports[name];
  if (!child) {
    let loggerConfig = { 
      name,
      silent: !config.logging.console[name]
    };
    child = logger.add(new winston.transports.Console(Object.assign(loggerConfig, consoleConfig)));
  }
  return child;
};

module.exports = {
  getLogger
};