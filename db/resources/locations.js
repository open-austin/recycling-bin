const query = require('pg-query');

module.exports = {
  list: function(callback) {
    query(`SELECT * from locations`, callback);
  },

  get: function(id, callback) {
    query.first(`SELECT *,
      (select json_agg(r)
        from (select id, report from reports where reports.location_id = locations.id) as r) as reports
      FROM locations WHERE ID = $1`, [id], callback);
  },

  search: function(address, callback) {
    query.first('SELECT * FROM LOCATIONS WHERE ADDRESS LIKE $1', [address + "%"], callback);
  },

  insert: function(data, callback) {
    var name = data.payload.name;
    var lat = data.payload.coordinates[0];
    var lng = data.payload.coordinates[1];
    var address = data.payload.address;
    query('INSERT INTO locations (name, coordinates, address) VALUES ($1, point($2, $3), $4) RETURNING *',
     [name, lat, lng, address],
     function(err, rows, result) {
       return callback(err, err ? null : rows[0]);
     }
   );
  },

  update: function(id, data, callback) {
    //TODO how should reports be stored?
    query('INSERT INTO reports (location_id, report) VALUES ($1, $2)',[id, data.payload.report], callback);
    //callback(null, data);
  }
};
