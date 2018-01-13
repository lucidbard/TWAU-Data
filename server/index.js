'use strict';

const session = require('express-session');
const express = require('express');
const http = require('http');
const uuid = require('uuid');
const watch = require('watch');
const reload = require('reload');
var path = require('path');
const WebSocket = require('ws');
const bodyParser = require('body-parser');
const logger = require('morgan');

const publicDir = path.join(__dirname, 'public');

//
// We need the same instance of the session parser in express and
// WebSocket server.
//
const sessionParser = session({
  saveUninitialized: false,
  secret: '$eCuRiTy',
  resave: false
});

const app = express();
app.set('port', process.env.PORT || 8080);
app.use(logger('dev'));
app.get('/', function (req, res) {
    res.sendFile(path.join(publicDir, 'index.html'));
});

//
// Serve static files from the 'public' folder.
//
app.use(express.static('public'));
app.use(sessionParser);

app.post('/login', (req, res) => {
  //
  // "Log in" user and set userId to session.
    //
    const id = uuid.v4();

    console.log(`Updating session for user ${id}`);
    req.session.userId = id;

    res.send({ result: 'OK', message: 'Session updated' });
});

app.delete('/logout', (request, response) => {
  console.log('Destroying session');
  request.session.destroy();
  response.send({ result: 'OK', message: 'Session destroyed' });
});

// Reload code here
var reloadServer = reload(app,{verbose:true});

watch.watchTree(__dirname + "/public", function (f, curr, prev) {
    // Fire server-side reload event
    reloadServer.reload();
});

// Create HTTP server by ourselves.
const server = http.createServer(app);

const wss = new WebSocket.Server({
    verifyClient: (info, done) => {
    console.log('Parsing session from request...');
        sessionParser(info.req, {}, () => {

            console.log('Session is parsed!');
            console.log(info.req.session);
            //
            // We can reject the connection by returning false to done(). For example,
            // reject here if user is unknown.
            //
            done(info.req.session.userId);
    });
    },
  server});

wss.on('connection', (ws, req) => {
    ws.on('message', (message) => {
        //
        // Here we can now use session parameters.
        //
        console.log(`WS message ${message} from user ${req.session.userId}`);
        ws.send(`You said: ${message}`);
    });
    ws.on('close', function close() {
        console.log('disconnected');
    });
    ws.on('error', function (err) {
        if (err.code !== 'ECONNRESET') {
            // Ignore ECONNRESET and re throw anything else
            throw err;
        }
    });
});

// Start the server.
server.listen(8080, () => console.log('Listening on ' + app.get('port')));
