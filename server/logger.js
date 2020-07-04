
const winston = require('winston');
const chalk = require('chalk');
const path = require('path');

const { format } = winston;
const { combine, timestamp, printf, errors, colorize } = format;

const config = require('./config');

// TODO: Move this to config
const displayFullCallSite = false;
const displayFullTimestamp = false;

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
});

const getCallSite = () => {
  let error = new Error();
  let stack = error.stack.split("\n");
  let callerLineIndex = 3;
  let callerLine = stack[callerLineIndex];
  let fileFromIdx = callerLine.lastIndexOf(' ') + 1;
  let file = callerLine.substring(fileFromIdx);
  if (file.startsWith('(')) {
    file = file.substring(0, file.length - 1);
  }
  if (!displayFullCallSite) {
    let idx = file.lastIndexOf(path.sep);
    if (idx !== -1) {
      file = file.substr(idx + 1);
    }
  }
  return file;
};

const getTimestamp = (timestamp) => {
  if (!displayFullTimestamp) {
    let segments = timestamp.split('T');
    let result = segments[1];
    let idx = result.indexOf('.');
    return result.substring(0, idx);
  } else {
    return timestamp;
  }
}

let consoleConfig = { 
  level: 'info',
  handleExceptions: true,
  format: combine(
    errors({ stack: true }),
    filterDisabled(),
    timestamp(),
    colorize(),
    errorStackFormat(),
    printf(args => {
      let { level, message, timestamp, name, silent, stack, callsite } = args;
      if (!silent) {
        message = typeof message === 'object' ? JSON.stringify(message, null, 2) : message;
        timestamp = getTimestamp(timestamp);
        let log = `${timestamp} ${chalk.yellow(name)} - ${level}: ${message}`;
        if (callsite) {
          log = `${chalk.cyan(callsite)}: ${log}`;
        }
        if (stack) {
          log += `\n${stack}`;
        }
        return log;
      } else {
        return null;
      }      
    })
  )
};

// Configure transport for default logger
winston.add(new winston.transports.Console(consoleConfig));

const logger = winston.createLogger({
  levels: winston.config.syslog.levels,
  
  transports: [

    new winston.transports.Console(consoleConfig),

    new winston.transports.File({
      filename: config.logging.filename,
      level: 'info',
      handleExceptions: true,
      format: combine(
        timestamp(),
        errorStackFormat(),
        printf(args => {
          let { level, message, timestamp, name, stack } = args;
          let log = `${timestamp} ${name} - ${level}: ${message}`;
          if (stack) {
            log += `\n${stack}`;
          }
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
  // Create the logger
  let child = logger.child(childConfig);

  const loggers = ['emerg', 'alert', 'crit', 'error', 'warning', 'notice', 'info', 'debug'];
  const handle = function(name) {

  }
  const getDelegate = function(name) {
    let original = child[name];
    return function() {
      if (arguments.length === 0) {
        // Delegate to the original logging method
        return original.apply(child, arguments);
      }
      let args = [];
      let arg = arguments[0];

      let callsite = getCallSite();

      if (arg && !arg.message) {
        args = [{
          message: arg,
          callsite
        }];
      } else {
        arg.callsite = callsite;
        args = [arg];
      }
      // Delegate to the original logging method
      return original.apply(child, args);
    };
  };
  loggers.forEach(logger => {
    if (child[logger]) {
      child[logger] = getDelegate(logger);
    }
  });
  return child;
};

// Overwrite the global console.log function.
// This would not be something acceptable in a real production 
// application, but I want to make a prominent reminder each time.
console.log = function() {
  let callsite = getCallSite();
  let name = callsite;
  let segments = callsite.split('.');
  if (segments.length === 1) {
    name = segments[0];
  } else if (segments.length >= 2) {
    name = segments[segments.length - 2];
  }
  winston.info({
    message: `${chalk.red('!!! Remember to always use a logger. Avoid using ')}${chalk.yellow('console.log')} ${chalk.red('!!!')}`,
    callsite,
    name
  });
  winston.info({
    message: arguments[0],
    callsite,
    name
  });
};

module.exports = {
  getLogger
};
