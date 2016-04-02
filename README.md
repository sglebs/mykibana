
Installing
==========
git clone git@github.com:sglebs/kibana.git
cd kibana
git remote add dokku dokku@127.0.0.1.nip.io:kibana
dokku app:create kibana
dokku config:set kibana ELASTICSEARCH_URL=http://elasticsearch.127.0.0.1.nip.io:9200
dokku config:set kibana NODE_OPTIONS="--max-old-space-size=200"
dokku docker-options kibana add run "-p 80:5601 -m 256mb"
git push dokku


ELASTICSEARCH_URL=
NODE_OPTIONS="--max-old-space-size=200"