var static = require('node-static'),
	dotenv = require('dotenv');
dotenv.load();

var fileServer = new static.Server('./');

require('http').createServer(function (request, response) {
    request.addListener('end', function () {
        fileServer.serve(request, response);
    }).resume();
}).listen(process.env.PORT|3000);