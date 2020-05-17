
const http = require('http');

http.createServer((req, resp) => {
    resp.writeHead(200, {
        'Content-Type': 'application/json'
    });
    let salida = {
        nombre: 'paco',
        edad: '89',
        url: req.url,
        a: 187368172
    };
    resp.write(JSON.stringify(salida, null, 4));
    resp.end();
}).listen(8080);

console.log('Hello World!');
