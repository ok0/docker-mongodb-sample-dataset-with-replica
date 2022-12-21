#/bin/bash

mongod & pid=$!
echo "Start mongod to import data, pid ${pid}"

echo "Import sample dataset."
mongorestore --archive=sample/sampledata.archive

kill $pid
wait
exec mongod --bind_ip_all --replSet replica-set