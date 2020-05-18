const express = require('express');

const app = express();

const _ = { 
    type: "Bug",
    status: "New",
    severity: "Low",
    owner: "marcelo.ramos@gmail.com",
    createdBy: "marcelo.ramos@gmail.com",
    createdAt: "2020-05-15 17:05:12",
    updatedBy: "marcelo.ramos@gmail.com",
    updatedAt: "2020-05-15 17:05:12",
    resolution: null,
    resolvedAt: null,
    resolvedBy: null
};

app.get('/', (req, res) => {
    res.send([
        Object.assign({}, _, { 
            id: 1,
            summary: "Ticket 1",
            description: "Ticket 1 probably will have a description, one day"
        }),
        Object.assign({}, _, { 
            id: 2,
            summary: "Ticket 1",
            description: "Ticket 3 probably will have a description, one day",
            status: "In Progress",
            severity: "Medium",
            owner: "edgarmaganaglez@hotmail.com"
        }),
        Object.assign({}, _, { 
            id: 3,
            summary: "Ticket 3",
            description: "Ticket 3 probably will have a description, one day",
            status: "Closed",
            severity: "High",
            owner: "pakeperez@gmail.com",
            resolvedBy: "edgarmaganaglez@hotmail.com",
            resolvedAt: "2020-05-17 13:51:01",
            resolution: "Working As Designed"
        })
    ])
})



module.exports = app;