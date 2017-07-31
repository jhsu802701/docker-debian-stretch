#!/bin/bash

CONTAINER='<CONTAINER>'
DOCKER_IMAGE='<DOCKER_IMAGE>'

echo '----------------------------------------------------------'
echo "Removing old containers ($DOCKER_IMAGE: name = $CONTAINER)"
for i in $(docker ps -a | grep "$DOCKER_IMAGE" | grep "$CONTAINER" | awk '{print $1}')
do
  docker kill $i; wait;
  docker rm $i; wait;
done;

echo '------------'
echo 'docker ps -a'
docker ps -a

echo '-------------------------------------'
echo "docker images -a | grep $DOCKER_IMAGE"
docker images -a | grep $DOCKER_IMAGE

sh copy_new.sh $DOCKER_IMAGE
