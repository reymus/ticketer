const QueryModel = require('./../database/querymodel');
const { Tickets } = require('./../database/model');

const db = require('./../database');

const processSingleResult = (ticket) => {
    let newTicket = {};
    Object.keys(ticket).forEach(key => {
        if (key.indexOf(".") !== -1) {
            let segments = key.split(".");
            let newKey = segments[0];
            let subKey = segments[1];
            if (!newTicket[newKey]) {
                newTicket[newKey] = {};
            }
            newTicket[newKey][subKey] = ticket[key];
        } else {
            newTicket[key] = ticket[key];
        }
    });
    return newTicket;
};

const processResults = (tickets) => {
    return tickets.map(processSingleResult);
};

let logger = require('./../logger').getLogger('tickets');

const getTickets = async(params) => {
    
    logger.info(`params: ${JSON.stringify(params)}`);
    let queryModel = new QueryModel(Tickets);
    queryModel.select(params.fields);

    params.sortBy = params.sortBy || [];
    params.sortBy.forEach(orderBy => {
        let segments = orderBy.split(":");
        let field = segments[0];
        let sortOrder = segments[1];
        queryModel.orderBy(field, sortOrder);
    });

    Object.keys(params.filters).forEach(filter => {
        let field = filter;
        let operator = "eq";
        let value = params.filters[field];

        if (!queryModel.fields[field]) {
            if (field.indexOf(":") !== -1) {
                let segments = field.split(":");
                if (segments.length > 2) {
                    // throw exception
                }
                field = segments[0];
                operator = segments[1];
            }
        }
        switch (operator) {
            case 'eq': {
                queryModel.where(field).equals(value);
                break;
            }
            case 'neq':
            case '<>': {
                queryModel.where(field).notEquals(value);
                break;
            }
            case 'like': {
                queryModel.where(field).like(value);
                break;
            }
        }
    });

    let query = queryModel.limit(params.limit).offset(params.offset).build();

    let tickets = await db.query(query);
    if (!params.flatten) {
        tickets = processResults(tickets);
    }
    return tickets;
};

const getTicket = async(id, params = { flatten: false }) => {
    let queryModel = new QueryModel(Tickets);
    let query = queryModel.select('*').byPrimaryKey(id).build();
    let results = await db.query(query);
    let ticket = results[0];
    if (!params.flatten) {
       ticket = processSingleResult(ticket);
    }
    return ticket;
};

const createTicket = async(body) => {
    let model = Tickets;
    let values = [];
    let fields = Object.keys(model.fields);

    for (let i = 0; i < fields.length; i++) {
        if (fields[i] != 'id' && fields[i] in body) {
            values.push(`'${body[fields[i]]}'`);
        } else {
            values.push('null');
        }
    }
    let sql = `INSERT INTO ${model.table} VALUES(${values.join(', ')})`;
    let result = await db.query(sql);

    if (result.insertId != null) {
        let res = await getTicket(result.insertId);
        return res;
    }
    return result;
}

const updateTicket = async(body, id) => {
    let model = Tickets;
    let fields = Object.keys(body);

    let values = fields.map((key) => {
        return `${model.table}.${key} = '${body[key]}'`;
    });

    let sql = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}='${id}'`;
    logger.info(`Updating ticket with SQL: ${sql}`);
    let result = await db.query(sql);

    if (result.affectedRows != null) {
        let res = await getTicket(id);

        return res;
    }
    return result;
};

module.exports = {
    getTickets,
    getTicket,
    createTicket,
    updateTicket
};