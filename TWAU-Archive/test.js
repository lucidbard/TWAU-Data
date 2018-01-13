var $rdf = require('rdflib');

var store = $rdf.graph()
var timeout = 5000 // 5000 ms timeout
var fetcher = new $rdf.Fetcher(store, timeout)
var url = "http://localhost:8080/StoryIntentionGraph.owl";
var SIG = $rdf.Namespace("http://www.semanticweb.org/lucid/ontologies/2018/0/StoryIntentionGraph#");

fetcher.nowOrWhenFetched(url, function(ok, body, xhr) {
    if (!ok) {
        console.log("Oops, something happened and couldn't fetch data");
    } else {
      console.log("ok");
        // do something with the data in the store (see below)
      var state3 = SIG('State3');
      console.log(state3);
      var follows = SIG('ti_f');
      console.log(follows);
      var myFoafFile = $rdf.sym(url)
      var friends = store.statementsMatching(state3, follows, undefined)  // Any one person
        for (var i = 0; i < friends.length; i++) {
          console.log("Found " + i);
          console.log(friends[i]);
          console.log(friends[i].subject.uri);
          console.log(friends[i].object.uri);
        }
    }
});
