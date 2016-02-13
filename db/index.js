const query = require('pg-query');
const config = require('../config');
query.connectionParameters = config.db.connectionStr;

module.exports = {
  query: query,
  locations: require('./resources/locations'),
  reports: require('./resources/reports')
};
console.log("Connected to db");
