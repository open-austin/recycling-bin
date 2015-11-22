module.exports = {
  list: function(callback) {
    // TODO
    callback(null);
  },
  get: function(id, callback) {
    query('SELECT * FROM LOCATIONS WHERE LOCATION_ID = $1', [id], callback);
  }
};
