const http = require('http');
const port = process.env.PORT || 3000;
const marker = process.env.DCMS_FIXTURE_MARKER || 'dcms-fixture-ok';
http.createServer((req, res) => {
  if (req.url === '/health') { res.writeHead(200); return res.end('ok'); }
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end(`<!doctype html><title>DCMS fixture</title><h1>${marker}</h1><p>branch marker</p>`);
}).listen(port, '127.0.0.1', () => console.log('listening on ' + port));
