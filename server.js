const Hapi = require('hapi');
const routes = require('./routes');
const server = new Hapi.Server();
const port = +process.env.PORT || 8000;
server.connection({
  host: '0.0.0.0',
  port: port,
  routes: { cors: true }
});

server.route(routes);

server.start(function () {
  console.log('Server listening on port', port);
});
