var fs = require('fs')
  , ini = require('ini')

var config = ini.parse(fs.readFileSync('./WolfAmongUs101.annot', 'utf-8'))
const http = require('http');
var express = require('express');
var app = express();
var httpServer = http.createServer(app);

console.log(JSON.stringify(config));
//config.scope = 'local'
//config.database.database = 'use_another_database'
//config.paths.default.tmpdir = '/tmp'
//delete config.paths.default.datadir
//config.paths.default.array.push('fourth value')

app.get('/', function(req, res) {
  res.redirect('/index.html');
});

app.get('/dialogue/:episodeNum', function (req, res) {
  res.json(config);
})

httpServer.listen(80);
console.log('Server running at http://192.168.1.116:8080/');

app.use(express.static('public'));
