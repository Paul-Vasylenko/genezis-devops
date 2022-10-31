const _ = require('lodash');
const http = require('http');

const a = 1;
const b = 2;

http.createServer((req, res) => {
    res.end(`${a} + ${b} = ${_.add(a,b)}`);
}).listen(4000);

process.on('SIGTERM', function() {
    console.log('SIGTERM: shutting down...');
});
