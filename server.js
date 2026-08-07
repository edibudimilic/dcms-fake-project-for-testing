const http = require('http');
const fs = require('fs');
const path = require('path');
const port = process.env.PORT || 3000;
http.createServer((req, res) => {
  const target = path.join(process.cwd(), 'runtime-generated.txt');
  try {
    fs.writeFileSync(target, 'written at ' + new Date().toISOString() + '\n');
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end('<!doctype html><title>DCMS fixture</title><h1>dcms-fixture-writes-cwd OK</h1>');
  } catch (err) {
    res.writeHead(500, { 'Content-Type': 'text/plain' });
    res.end('write to CWD failed: ' + err.message);
  }
}).listen(port, '0.0.0.0', () => console.log('listening on ' + port));
