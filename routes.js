const db = require('./db');

module.exports = [
  {
    method: 'GET',
    path: '/',
    handler: function(request, reply) {
      reply('Hello, world!');
    }
  },
  {
    method: 'GET',
    path: '/locations',
    handler: function(request, reply) {
      db.locations.list(function(err, locations) {
        if (err) return reply('Unable to list locations').code(500);
        return reply({ locations: locations });
      });
    }
  },
  {
    method: 'GET',
    path: '/locations/{id}',
    handler: function(request, reply) {
      db.locations.get(request.params.id, function(err, location) {
        if (err) return reply('Unable to find location').code(500);
        return reply(location);
      });
    }
  },
  {
    method: 'POST',
    path: '/locations',
    handler: function(request, reply) {
      db.locations.insert(request, function(err, location) {
        console.log(err)
        if (err) return reply("Unable to add location").code(500);
        return reply(location);
      });
    }
  },
  {
    method: 'POST',
    path: '/locations/{id}',
    handler: function(request, reply) {
      db.locations.update(request.params.id, request, function(err, location) {
        console.log(err)
        if (err) return reply("Unable to add report").code(500);
        return reply(location);
      });
    }
  }
];
