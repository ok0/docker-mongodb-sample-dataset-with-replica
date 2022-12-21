# mongodb-replica-sample-dataset-with-docker

## Start

docker-compose -f docker-compose up -d

## Check Container status

```shell
docker ps
```

## Check Replica Set

```shell
docker exec -it mongo-master /bin/bash
ps aux
```

## Start Replica Set

```shell
docker exec -it mongo-master /bin/bash
bash replica-setup.sh

# Wait a about 5 seconds..
```

## Connecting w/ URI

### on MAC

> https://docs.docker.com/docker-for-mac/networking/#per-container-ip-addressing-is-not-possible

```shell
vi /etc/hosts
#Add
#127.0.0.1   mongo-master mongo-node00 mongo-node01
```

### URI

```shell
mongodb://localhost:27017,localhost:27018,localhost:27019/?replicaSet=replica-set
```
