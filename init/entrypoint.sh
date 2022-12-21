#/bin/bash

echo "Import sample dataset."

mongod & pid=$!
echo "Start mongod to import data, pid ${pid}"

echo "Import sample dataset."
mongorestore --archive=sample/sampledata.archive

echo "Set Admin"


kill $pid
wait
exec mongod --bind_ip_all