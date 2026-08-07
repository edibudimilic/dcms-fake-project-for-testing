const http = require('http');
const port = process.env.PORT;
if (!port) {
  console.error('fixture: PORT must be injected; refusing to guess');
  process.exit(1);
}
http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end('<!doctype html><title>DCMS fixture</title><h1>dcms-fixture-needs-port-env</h1>');
}).listen(port, '0.0.0.0', () => console.log('listening on ' + port));
