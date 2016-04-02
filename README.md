Use this project to install a kibana in your dokku install. We assume dokku is at 127.0.0.1.nip.io

Pre-requisites
==============
Deploy our elasticsearch project first - https://github.com/sglebs/elasticsearch

Installing
==========
```
git clone git@github.com:sglebs/kibana.git
cd kibana
git remote add dokku dokku@127.0.0.1.nip.io:kibana
dokku app:create kibana
dokku config:set kibana ELASTICSEARCH_URL=http://elasticsearch.127.0.0.1.nip.io:9200
dokku config:set kibana NODE_OPTIONS="--max-old-space-size=200"
dokku docker-options:add kibana run "-p 80:5601"
dokku docker-options:add kibana run "-m 384mb"
git push dokku
```

Using
======
http://elasticsearch.127.0.0.1.nip.io should work if port redirection (docker-options) worked.
Otherwise you need to use http://elasticsearch.127.0.0.1.nip.io:5601