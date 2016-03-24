var console = require("console"),
my_http = require("http");
my_http.createServer(function(request,response){
    console.log("I got kicked");
    response.writeHeader(200, {"Content-Type": "text/html"});
    response.write("<!DOCTYPE 'html'>");
    response.write("<html>");
    response.write("<head>");
    response.write("<title>Hello NodeJS World - Version 2.1.2</title>");
    response.write("</head>");
    response.write("<body>");
    response.write("<h1>Showcasing what you can do with AWS:</h1>");
    // response.write('<object data="http://devopsreactions.tumblr.com/random" width="600" height="800">');
    // response.write('<embed src="http://devopsreactions.tumblr.com/random" width="600" height="800">');
    // response.write('</embed> Error: Embedded data could not be displayed. </object>');

    response.write("<img src='http://33.media.tumblr.com/9dc8e66ba2ba5ebc9e4f3d2f75ab9175/tumblr_inline_nxj4zhbzy61raprkq_500.gif'>");
    response.write("</body>");
    response.write("</html>");
    response.end();
    // response.write('<html><head><body><h1>Hello World - Version 2.1.1</h1>' +
    //     '<p/>' +
    //     'Here is a sabre for you:<br/>' +
    //     '<img src="http://i.imgur.com/HfkfEZc.jpg?1" width="300px">' +
    //     '</body>');
    // response.end();
}).listen(8080);
console.log("Server Running on 8080"); 

