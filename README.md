# mongodb-replica-sample-dataset-with-docker

## Start

docker-compose -f docker-compose up -d

## Check Container status

```shell
docker ps
```

> 6d9a67b7f3de mongodb-replica-sample-dataset-with-docker-mongo-master "bash /init/entrypoi…" 38 seconds ago Up 36 seconds 0.0.0.0:27017->27017/tcp mongo-master
> 534572f0c6a1 mongodb-replica-sample-dataset-with-docker-mongo-node01 "bash /init/entrypoi…" 38 seconds ago Up 37 seconds 0.0.0.0:27019->27017/tcp mongo-node01
> 05b89e68e8da mongodb-replica-sample-dataset-with-docker-mongo-node00 "bash /init/entrypoi…" 38 seconds ago Up 37 seconds 0.0.0.0:27018->27017/tcp mongo-node00

## Check Replica Set

```shell
docker exec -it mongo-master /bin/bash
ps aux
```

> root 1 3.5 1.5 2769276 125632 ? Ssl 14:55 0:02 mongod --bind_ip_all --replSet
> root 128 3.0 0.0 4116 3488 pts/0 Ss 14:56 0:00 /bin/bash
> root 135 0.0 0.0 5900 2868 pts/0 R+ 14:56 0:00 ps aux

## Start Replica Set

```shell
docker exec -it mongo-master /bin/bash
bash replica-setup.sh

# Wait a about 5 seconds..
```

> replica-set [direct: secondary] test>
> replica-set [direct: primary] test>

## Connecting w/ URI

```shell
localhost:27017,localhost:27018,localhost:27019/?replicaSet=replica-set
```
