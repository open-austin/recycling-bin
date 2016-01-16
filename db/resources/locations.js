const query = require('pg-query');

module.exports = {
  list: function(callback) {
    query('SELECT id, name, coordinates, address, reports[1], array_length(reports, 1) FROM LOCATIONS', callback);
  },

  get: function(id, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ID = $1', [id], callback);
  },

  search: function(address, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ADDRESS LIKE $1', [address + "%"], callback);
  },

  insert: function(data, callback) {
    query('INSERT INTO LOCATIONS (name, coordinates, address, reports) VALUES ($1, $2, $3, $4) RETURNING ID',
     [data.payload.name, data.payload.coordinates, data.payload.address, data.payload.report], callback);
    //callback(null, data);
  },

  update: function(id, data, callback) {
    query('UPDATE LOCATIONS ( set reports = array_append(reports , $2) where ID = $1)',[id, data.payload.report], callback);
    //callback(null, data);
  }
};
