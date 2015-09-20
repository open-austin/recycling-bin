const Hapi = require('hapi');
const routes = require('./routes');
const server = new Hapi.Server();

server.connection({
  host: 'localhost',
  port: 8000
});

server.route(routes);

server.start(function () {
    console.log('Server running at:', server.info.uri);
});
