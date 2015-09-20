const query = require('pg-query');

module.exports = {
  list: function(callback) {
    query('SELECT * FROM LOCATIONS', callback);
  },

  get: function(id, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ID = $1', [id], callback);
  },

  insert: function(data, callback) {
    query.first('INSERT INTO LOCATIONS (name, coordinates, score, address, reports) VALUES ($1, $2, $3, $4, $5)',
     [data.payload.name, data.payload.coordinates, data.payload.score, data.payload.address, data.payload.report], callback);
    //callback(null, data);
  },

  update: function(id, data, callback) {
    //TODO how should reports be stored?
    query('UPDATE LOCATIONS SET score = score + $1 WHERE ID = $2',[data.payload.score, id], callback);
    //callback(null, data);
  }
};
