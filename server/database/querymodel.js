// Simple query model useful to build queries across modeled tables 
// allowing to resolve references in a simple step without the need 
// to hand write confusing SQL JOINS.
//
// TODO: Support for WHERE clauses
// TODO: Document this thing...

/*

Sample usage:

let queryModel = new QueryModel(Tickets);
  let query = queryModel.select('id', 'owner', 'created_by')
    .orderBy('created_by.email')
    .orderBy('id', 'DESC')
    .limit(10).offset(30)
    .build();
    
  console.log(query);
*/
const QueryModel = function(model) {
  this.model = model;

  this.fields = [];
  this.orderByList = [];
};

QueryModel.prototype.select = function(fields) {
  
  this.fields = Array.isArray(fields) ? fields : Array.from(arguments);
  
  // validate fields exist
  return this;
};

QueryModel.prototype.orderBy = function(field, order = "ASC") {
  this.orderByList.push({ field, order });
  return this;
};

QueryModel.prototype.limit = function(limit) {
  this.limit = limit;
  return this;
};

QueryModel.prototype.offset = function(offset) {
  this.offset = offset;
  return this;
};

QueryModel.prototype.build = function() {
  let froms = [ this.model.table ];
  let fields = [];
  if (this.fields.length > 0) {
    fields = Object.keys(this.model.fields).filter(field => this.fields.indexOf(field) !== -1);
  } else {
    fields = Object.keys(this.model.fields);
  }
  let selectFields = [];
  for (let i = 0; i < fields.length; i++) {
    let fieldName = fields[i];
    let field = this.model.fields[fieldName];
    if (field.reference) {
      let refFields = Object.keys(field.reference.fields);
      for (let j = 0; j < refFields.length; j++) {
        let refFieldName = refFields[j];
        //let refField = field.reference.fields[refFieldName];
        
        selectFields.push(`${fieldName}.${refFieldName} AS '${fieldName}.${refFieldName}'`);
      }
      let join = field.nullable ? 'LEFT JOIN' : 'INNER JOIN'
      froms.push(`${join} ${field.reference.table} AS ${fieldName} ON ${this.model.table}.${fieldName} = ${fieldName}.${field.reference.primaryKey}`);
    } else {
      selectFields.push(`${this.model.table}.${fieldName}`);
    }
  }

  let from = froms[0];
  for (let i = 1; i < froms.length; i++) {
    from = `(${from}
      ${froms[i]})`;
  }

  let sql = `
  SELECT ${selectFields.join(', ')} 
  FROM ${from}
  `;

  if (this.orderByList.length > 0) {
    let orderBy = 'ORDER BY ';
    let orderBySegments = [];
    for (let i = 0; i < this.orderByList.length; i++) {
      orderBySegments.push(`${this.orderByList[i].field} ${this.orderByList[i].order}`);
    }
    sql += `ORDER BY ${orderBySegments.join(', ')}
    `;
  }
  if (this.limit) {
    sql += `LIMIT ${this.limit}
    `;
  }
  if (this.offset) {
    sql += `OFFSET ${this.offset}
    `;
  }
  return sql + ";";
};

module.exports = QueryModel;