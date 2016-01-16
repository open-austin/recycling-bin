const query = require('pg-query');

module.exports = {
  list: function(callback) {
    // TODO
    callback(null);
  },
  get: function(id, callback) {
    query('SELECT * FROM REPORTS WHERE LOCATION_ID = $1', [id], callback);
  },
  insert: function(locationId, report, callback) {
    query.first('INSERT INTO REPORTS (location_id, report) VALUES ($1, $2) RETURNING *',
     [locationId, report],
     callback
   );
  }
};
