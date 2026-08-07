const http = require('http');
const port = process.env.PORT || 3000;
http.createServer((q, r) => {
  r.writeHead(200, { 'Content-Type': 'text/html' });
  r.end('<!doctype html><title>DCMS fixture</title><h1>dcms-multistage-app-stage OK</h1><p>stage=runtime</p>');
}).listen(port, '0.0.0.0');
