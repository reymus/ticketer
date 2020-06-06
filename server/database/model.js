// A JavaScript based model of the Database tables.
const Types = {
    INT: "int",
    VARCHAR: "varchar",
    TEXT: "text",
    TIMESTAMP: 'timestamp'
};

const Users = {
    table: "users",
    fields: {
        "id": { type: Types.INT },
        "first_name": { type: Types.VARCHAR },
        "last_name": { type: Types.VARCHAR },
        "email": { type: Types.VARCHAR },
        "password": { type: Types.VARCHAR }
    },
    primaryKey: "id"
};

const TicketTypes = {
    table: "ticket_types",
    fields: {
        "id": { type: Types.INT },
        "name": { type: Types.VARCHAR }
    },
    primaryKey: "id"
};

const Severities = {
    table: "severities",
    fields: {
        "id": { type: Types.INT },
        "name": { type: Types.VARCHAR }
    },
    primaryKey: "id"
};

const Resolutions = {
    table: "resolutions",
    fields: {
        "id": { type: Types.INT },
        "name": { type: Types.VARCHAR }
    },
    primaryKey: "id"
};

const Status = {
    table: "status",
    fields: {
        "id": { type: Types.INT },
        "name": { type: Types.VARCHAR }
    },
    primaryKey: "id"
};

const Tickets = {
    table: "tickets",
    fields: {
        "id": { type: Types.INT },
        "summary": { type: Types.VARCHAR },
        "description": { type: Types.VARCHAR },
        "type": { type: Types.INT, reference: TicketTypes },
        "owner": { type: Types.INT, reference: Users },
        "severity": { type: Types.INT, reference: Severities },
        "created_at": { type: Types.TIMESTAMP },
        "created_by": { type: Types.INT, reference: Users },
        "updated_at": { type: Types.TIMESTAMP, nullable: true },
        "updated_by": { type: Types.INT, reference: Users, nullable: true },
        "resolved_at": { type: Types.TIMESTAMP, nullable: true },
        "resolved_by": { type: Types.INT, reference: Users, nullable: true },
        "status": { type: Types.INT, reference: Status },
        "resolution": { type: Types.INT, reference: Resolutions, nullable: true },

    },
    primaryKey: "id"
};

module.exports = {
    Status,
    Resolutions,
    TicketTypes,
    Users,
    Severities,
    Tickets
}