console.log('Check Hosts file...');
var hostile = require('hostile');
hostile.set('127.0.0.1', 'frost3d.com');
console.log('Hosts file updated!');
console.log('Starting server...');
var httpserver = require('http-server');
httpserver.createServer({
    root: './root',
    cache: -1,
    mimeType: "./types.txt"
}).listen(80);
console.log('Server started!');
console.log('You can start game now!')
console.log('Donot close this window before the game ends!')
