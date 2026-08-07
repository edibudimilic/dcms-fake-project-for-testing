const http = require('http');
require('sharp'); require('bcrypt'); require('canvas');
const port = process.env.PORT || 3000;
http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end('<!doctype html><title>DCMS fixture</title><h1>dcms-fixture-native-modules</h1>');
}).listen(port, '0.0.0.0', () => console.log('listening on ' + port));
