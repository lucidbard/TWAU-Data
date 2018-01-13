?- [library(semweb/rdf_db)].
%@ true.
?- [library(semweb/rdf_http_plugin)].
%@ true.
?- rdf_load('/Users/lucid/Dropbox/TWAU-data/dissertation/file.rss').
?- [library(semweb/turtle)].
?- rdf_load('http://dbpedia.org/resource/Amsterdam').
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:71:23: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:72:23: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:180:43: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:296:11: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:1018:43: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:1035:42: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:1037:43: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:4815:25: Syntax error: PN_PREFIX expected
%@ ERROR: http://dbpedia.org/data/Amsterdam.ttl:5124:27: Syntax error: PN_PREFIX expected
%@ % Parsed "http://dbpedia.org/resource/Amsterdam" in 0.07 sec; 5,185 triples
                                %@ true.
rdf_graph(Graph).
rdf(S, P, literal('Amsterdam')).
