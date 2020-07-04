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
  },
  primaryKey: "id"
};

const Passwords = {
  table: "passwords",
  fields: {
    "user_id": { type: Types.INT },
    "password": { type: Types.VARCHAR }
  },
  primaryKey: "user_id"
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

const UserQueries = {
  table: "user_queries",
  fields: {
    "id": { type: Types.INT },
    "user_id": { type: Types.INT, reference: Users },
    "name": { type: Types.VARCHAR },
  },
  primaryKey: "id"
};

const UserQueryFilters = {
  table: "user_query_filters",
  fields: {
    "id": { type: Types.INT },
    "query_id": { type: Types.INT, reference: UserQueries },
    "field": { type: Types.VARCHAR },
    "value": { type: Types.VARCHAR },
  },
  primaryKey: "id"
};

const Comments = {
  table: "comments",
  fields: {
    "id": { type: Types.INT },
    "comment": { type: Types.VARCHAR},
    "ticket": { type: Types.INT},
    "created_by": { type: Types.INT, reference: Users},
    "created_at": { type: Types.TIMESTAMP },
  },
  primaryKey: "id"
};

module.exports = {
  Types, 
  Status,
  Resolutions,
  TicketTypes,
  Users,
  Passwords,
  Severities,
  Tickets,
  UserQueries,
  UserQueryFilters,
  Comments
}