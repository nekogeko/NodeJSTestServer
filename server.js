var console = require("console"),
my_http = require("http");
my_http.createServer(function(request,response){
    console.log("I got kicked");
    response.writeHeader(200, {"Content-Type": "text/plain"});
    response.write("Hello World - Version 2.1.1 <<<<<<<<<<WEEEEEEEEEE>>>>>>>> with CodePipeline !");
    response.end();
}).listen(8080);
console.log("Server Running on 8080"); 

