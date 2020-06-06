const path = require('path');
const express = require('express');
const bodyParser = require('body-parser');

const logger = require('./logger').getLogger('server');

const app = express();

const config = require('./config');
const routes = require('./routes');
app.use(bodyParser.json());
app.use('/api', routes);

app.use(express.static(path.resolve(__dirname, 'public')));

app.listen(config.server.port, () => {
    console.log(`Server started listening port ${config.server.port}`);
});

process.on('uncaughtException', function(error) {
    logger.error(error);
});

process.on('unhandledRejection', function(reason, p) {
    logger.error(reason);
});

//let x = 5;

/*function gab(x) {
    let bin = x.toString(2);
    console.log(bin);
    let res = 0;
    let ant = 0;
    for (let i = 0; i < bin.length; i++) {

        if (bin.charAt(i) == 0) {
            res += 1;
        } else {
            res = 0;
        }

        if (res > ant) {
            ant = res
        }

    }
    console.log(ant);
}

gab(1928);*/

function per(x) {
    let digits;
    let counts = 0;
    let res = 1;
    do {
        digits = ("" + x).split("");
        //sres = 1;
        for (let i = 0; i < digits.length; i++) {
            res *= digits[i]; //* digits[i + 1];
        }
        x = res;
        counts++;
    } while (res.toString().length != 1);
    console.log(counts);

}

per(39);