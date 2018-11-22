docker stop couchdb-cors-persistent
docker system prune --force
docker build . -t couchdb-cors-persistent
docker run --rm -p 5984:5984 --mount type=bind,source="%cd%\\data",target=/opt/couchdb/data --mount type=bind,source="%cd%\\etc",target=/opt/couchdb/etc --name couchdb-cors-persistent -d couchdb-cors-persistent