const QueryModel = require('./../database/querymodel');
const { Tickets } = require('./../database/model');

const db = require('./../database');

const processResults = (tickets) => {
    return tickets.map(ticket => {
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
    });
};

const getTickets = async(params) => {
    let queryModel = new QueryModel(Tickets);
    queryModel.select(params.fields);

    params.sortBy = params.sortBy || [];
    params.sortBy.forEach(orderBy => {
        let segments = orderBy.split(":");
        let field = segments[0];
        let sortOrder = segments[1];
        queryModel.orderBy(field, sortOrder);
    });

    let query = queryModel.limit(params.limit).offset(params.offset).build();
    console.log(query);

    let tickets = await db.query(query);
    if (!params.flatten) {
        tickets = processResults(tickets);
    }
    return tickets;
};

const getTicket = async(id) => {
    let queryModel = new QueryModel(Tickets);
    let query = queryModel.select('*').byPrimaryKey(id).build();
    let results = await db.query(query);
    return results[0];
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

    let sql = `UPDATE ${model.table} SET ${values} WHERE ${model.table}.${model.primaryKey}=${id}`;
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