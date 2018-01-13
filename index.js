var fs = require('fs'),
http = require('http'),
url = require("url"),
path = require("path"),
express = require("express");

var app = express();
var server = app.listen(8080, function() {
});
app.use(express.static('public'));

app.use(function (req, res) {
  if (req.url == "/5G_1_1.mp4") {
    var file = path.resolve(__dirname,"public/images/5G_1_1.mp4");
    console.log(file);
    fs.stat(file, function(err, stats) {
      if (err) {
        console.log("error", err);
        if (err.code === 'ENOENT') {
          // 404 Error if file not found
          return res.sendStatus(404);
        }
      res.end(err);
      }
      var range = req.headers.range;
      if (!range) {
       // 416 Wrong range
       return res.sendStatus(416);
      }
      var positions = range.replace(/bytes=/, "").split("-");
      var start = parseInt(positions[0], 10);
      var total = stats.size;
      var end = positions[1] ? parseInt(positions[1], 10) : total - 1;
      var chunksize = (end - start) + 1;

      res.writeHead(206, {
        "Content-Range": "bytes " + start + "-" + end + "/" + total,
        "Accept-Ranges": "bytes",
        "Content-Length": chunksize,
        "Content-Type": "video/mp4"
      });

      var stream = fs.createReadStream(file, { start: start, end: end })
        .on("open", function() {
          stream.pipe(res);
        }).on("error", function(err) {
          res.end(err);
        });
      return 0;
    });
  }
});

//config.scope = 'local'
//config.database.database = 'use_another_database'
//config.paths.default.tmpdir = '/tmp'
//delete config.paths.default.datadir
//config.paths.default.array.push('fourth value')

console.log('Server running at http://192.168.1.116:8080/');
