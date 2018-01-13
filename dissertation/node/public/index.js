// Grab an existing namespace object, or create a blank object
// if it doesn't exist
var myGlobal = window.myGlobal || {};
myGlobal.rdf = require('rdf-ext');
window.myGlobal = myGlobal;
