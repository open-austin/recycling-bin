const query = require('pg-query');

module.exports = {
  list: function(callback) {
    query('SELECT * FROM LOCATIONS', callback);
  },

  get: function(id, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ID = $1', [id], callback);
  },

  insert: function(data, callback) {
    // TODO implement
    callback(null, data);
  }
};
