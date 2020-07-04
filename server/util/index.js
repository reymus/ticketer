const bcrypt = require('bcrypt');
const fromQuery = (req, param) => {
    if (req.query) {
        return req.query[param];
    } else {
        return null;
    }
};

const fromPath = (req, param) => {
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
};

const GlobalParams = {
    Fields: 'fields',
    SortBy: 'sortBy',
    Offset: 'offset',
    Limit: 'limit', // pageSize?
    Flatten: 'flatten'
};

const getFilterParams = (req) => {
    let globalParams = Object.values(GlobalParams);
    let params = Object.keys(req.query).filter(param => !globalParams.includes(param));
    let filters = {};
    params.forEach(param => {
        Object.assign(filters, {
            [param]: req.query[param]
        });
    });
    return filters;
};

const getCommonParams = (req) => {
    let fields = fromQuery(req, 'fields');
    if (fields != null) {
        fields = fields.split(',');
    }
    let sortBy = fromQuery(req, 'sortBy');
    if (sortBy != null) {
        sortBy = sortBy.split(',');
    }
    let offset = fromQuery(req, 'offset') || 0;
    let limit = fromQuery(req, 'limit') || 100;
    let flatten = fromQuery(req, 'flatten') || false;
    flatten = flatten === 'true';
    let filters = getFilterParams(req);

    return {
        fields,
        sortBy,
        offset,
        limit,
        flatten,
        filters
    };
}
const encrypt = (data) => {
    if (data != "" && data != undefined && data != null) {
        return bcrypt.hashSync(data, 10);
    } else {
        return null;
    }
};

const processSingleResult = (element) => {
    let newElement = {};
    Object.keys(element).forEach(key => {
        if (key.indexOf(".") !== -1) {
            let segments = key.split(".");
            let newKey = segments[0];
            let subKey = segments[1];
            if (!newElement[newKey]) {
                newElement[newKey] = {};
            }
            newElement[newKey][subKey] = element[key];
        } else {
            newElement[key] = element[key];
        }
    });
    return newElement;
};

const processResults = (data) => {
    return data.map(processSingleResult);
};


module.exports = {
    fromQuery,
    fromPath,
    fromBody,
    getFilterParams,
    getCommonParams,
    encrypt,
    processResults,
    processSingleResult
};