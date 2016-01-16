const query = require('pg-query');

module.exports = {
  list: function(callback) {
    query('SELECT * FROM LOCATIONS', callback);
  },

  get: function(id, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ID = $1', [id], callback);
  },

  search: function(address, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ADDRESS LIKE $1', [address + "%"], callback);
  },

  insert: function(data, callback) {
    query('INSERT INTO LOCATIONS (name, coordinates, address) VALUES ($1, $2, $3) RETURNING ID',
     [data.payload.name, data.payload.coordinates, data.payload.address],
     function(err, rows, result){
       query('INSERT INTO REPORTS (location_id, report) VALUES ($1, $2)', [rows[0].id,data.payload.report], callback);
     }
   );
    //callback(null, data);
  },

  update: function(id, data, callback) {
    //TODO how should reports be stored?
    query('INSERT INTO REPORTS (location_id, report) VALUES ($1, $2)',[id, data.payload.report], callback);
    //callback(null, data);
  }
};
