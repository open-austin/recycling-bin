const query = require('pg-query');

module.exports = {
  list: function(callback) {
    // TODO
    callback(null);
  },
  get: function(id, callback) {
    query('SELECT * FROM REPORTS WHERE LOCATION_ID = $1', [id], callback);
  }
};
