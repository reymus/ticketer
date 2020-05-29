const fromQuery = (req, param) => {
    if (req.query) {
        return req.query[param];
    } else {
        return null;
    }
};

const fromParam = (req, param) => {
    if (req.params) {
        return req.params[param];
    } else {
        return null
    }
};

const fromBody = (req) => {
    if (req.body) {
        return req.body;
    } else {
        return null
    }
}

module.exports = {
    fromQuery,
    fromParam,
    fromBody
};