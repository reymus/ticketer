
`
A simple script to generate database seeds to facilitate working 
with a prepopulated database when developing the application.

Based on the configuration from config.json, it will generate 
a SQL script to create a fixed amount of tickets with a random
amount of comments.

This script will hopefully grow to also generate multiple users

`
let fs = require('fs');

// Get configuration options
let config = fs.readFileSync('./config.json');
config = JSON.parse(config);

// Load the comment seeds.
let comments = fs.readFileSync('./comments.json');
comments = JSON.parse(comments).comments;

// Start output stream
let stream = fs.createWriteStream(config.output, { flags: 'w' });

// Will emmit a line of SQL to the output
const emmit = (code) => {
  stream.write(code + "\n");
};

// Will emmit an SQL INSERT statement to create a ticket 
// with the provided data.
const emmitTicket = (id, summary, description, owner, type, severity, 
    createdAt, createdBy, updatedAt, updatedBy, resolvedAt, resolvedBy, status, resolution) => {
  // get insert-friendly dates
  createdAt = formatDate(createdAt);
  resolvedAt = formatDate(resolvedAt);
  updatedAt = formatDate(updatedAt);

  // emmit the insert
  emmit(
    `INSERT INTO tickets (id_ticket, summary, description, owner, ticket_type, severity, created_at, created_by, updated_at, updated_by, resolved_at, resolved_by, status, resolution)
    VALUES(${id}, '${summary}', '${description}', ${owner}, ${type}, ${severity}, ${createdAt}, ${createdBy}, ${updatedAt}, ${updatedBy}, ${resolvedAt}, ${resolvedBy}, ${status}, ${resolution});`);
};


// - - - - - - - - - - - - - - - - - - -

emmit(`--- `);
emmit(`--- This is a generated script. Do not edit directly.`);
emmit(`--- If you need this file updated, you can do it by`);
emmit(`--- editing the seed_generator/index.js file directly.`);
emmit(`--- `);
emmit(``);

// emmit databse "constant" data

emmit(`--- Users`);
emmit(`INSERT INTO users VALUES(null, "Pake", "Perez", "pakeperez@gmail.com");`);
emmit(`INSERT INTO users VALUES(null, "Edgar", "Magana", "edgarmaganaglez@hotmail.com");`);
emmit(`INSERT INTO users VALUES(null, "Marcelo", "Ramos", "march.reymus@gmail.com");`);
emmit(``);

emmit(`--- Severities`);
emmit(`INSERT INTO severity VALUES(null, 'Low');`);
emmit(`INSERT INTO severity VALUES(null, 'Medium');`);
emmit(`INSERT INTO severity VALUES(null, 'High');`);
emmit(``);

emmit(`--- Ticket Types`);
emmit(`INSERT INTO ticket_types VALUES(null, "Bug");`);
emmit(`INSERT INTO ticket_types VALUES(null, "Development Item");`);
emmit(`INSERT INTO ticket_types VALUES(null, "Enhancement");`);
emmit(``);

emmit(`--- Resolutions`);
emmit(`INSERT INTO resolutions VALUES(null, "Fixed");`);
emmit(`INSERT INTO resolutions VALUES(null, "Working as Designed");`);
emmit(`INSERT INTO resolutions VALUES(null, "Won't Fix");`);
emmit(``);

emmit(`--- Status`);
emmit(`INSERT INTO status VALUES(null, 'New');`);
emmit(`INSERT INTO status VALUES(null ,'In Progress');`);
emmit(`INSERT INTO status VALUES(null, 'Under Review');`);
emmit(`INSERT INTO status VALUES(null, 'Closed');`);
emmit(``);

// Get a (pseudo) random integer [min, max]
const random = (min, max) => {
    return Math.floor(Math.random() * Math.floor(max) + min);
};

// andom generating
const randomStatus = random.bind(null, 1, 4);
const randomTicketType = random.bind(null, 1, 3);
const randomResolution = random.bind(null, 1, 3);
const randomSeverity = random.bind(null, 1, 3);
const randomUser = random.bind(null, 1, 3);

const CLOSED_STATUS = 4;

// Generates a random date starting from the date
// specified in the 'from' parameter or one week
// from now.
const getRandomDate = (from) => {
  let ONE_WEEK = 1000 * 60 * 60 * 24 *7;
  let days = random(1, 7) * 24 * 60 * 60 * 1000;
  let hours = random(1, 24) * 60 * 60 * 1000;
  let minutes = random(0, 60) * 60 * 1000;

  if (from) {
      from = from.getTime();
  } else {
    from = new Date().getTime() - ONE_WEEK;
  }

  let millis = from + days + hours + minutes;
  let date = new Date(millis);
  return date;
};

// Formats the date to a single-quoted string in SQL INSERT friendly format
const formatDate = (date) => {
  if (date !== 'null') {
    let formattedDate = date.toISOString().replace(/T/, ' ').replace(/\..+/, '');
    return `'${formattedDate}'`;
  }
  return date;
};

// Here we go... 
for (let i = 0; i < config.tickets_to_generate; i++) {
  let summary = `Ticket ${i + 1}`;
  let description = `Ticket ${i + 1} will hopefully have a description one day`;
  description += `... \n\n${description}... ${description}... \n${description}...  `;
  let status = randomStatus();
  let severity = randomSeverity();
  let type = randomTicketType();
  let createdAt = getRandomDate();
  let createdBy = randomUser();
  let updatedAt = getRandomDate(createdAt);
  let updatedBy = randomUser();
  let owner = randomUser();
  let resolution = "null";
  let resolvedAt = "null";
  let resolvedBy = "null";

  // If the ticket happens to be in closed status, 
  // populate the resolution fields
  if (status === CLOSED_STATUS) {
      resolution = randomResolution();
      resolvedAt = getRandomDate(createdAt);
      resolvedBy = randomUser();
  }
  // emmit the actual SQL...
  emmitTicket(i + 1, summary, description, owner, type, severity, 
    createdAt, createdBy, updatedAt, updatedBy, resolvedAt, resolvedBy, status, resolution);

  // Now let's create some comments for the ticket...
  let numComments = random(config.comments_per_ticket.min, config.comments_per_ticket.max);
  for (let j = 0; j < numComments; j++) {
    let comment = comments[random(0, comments.length - 1)];
    emmit(`INSERT INTO comments VALUES(null, '${comment.replace(/'/g, '')}', ${i + 1}, ${randomUser()}, ${formatDate(getRandomDate(createdAt))});`);
  }
}

// Close the stream
stream.end();
