const http = require('http');
const port = process.env.PORT || 3000;
const DELAY_MS = 150000;
console.log('fixture: sleeping ' + DELAY_MS + 'ms before listening');
setTimeout(() => {
  http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end('<!doctype html><title>DCMS fixture</title><h1>dcms-fixture-slow-start</h1>');
  }).listen(port, '0.0.0.0', () => console.log('listening on ' + port));
}, DELAY_MS);
