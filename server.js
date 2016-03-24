var console = require("console"),
my_http = require("http");
my_http.createServer(function(request,response){
    console.log("I got kicked");
    response.writeHeader(200, {"Content-Type": "text/html"});
    response.write('<html><head><body><h1>Hello World - Version 2.1.1</h1>' +
        '<p/>' +
        'Here is a sabre for you:<br/>' +
        '<img src="http://i.imgur.com/HfkfEZc.jpg?1" width="300px">' +
        '</body>');
    response.end();
}).listen(8080);
console.log("Server Running on 8080"); 

