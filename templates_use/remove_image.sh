#!/bin/bash

DOCKER_IMAGE=$1

sh remove_containers.sh $DOCKER_IMAGE

echo '--------------------------------'
echo "Removing images of $DOCKER_IMAGE"
for i in $(docker images -a | grep $DOCKER_IMAGE | awk '{print $3}')
  do
  docker kill $i; wait;
  docker rmi -f $i; wait;
done;

echo '-------------------------------------'
echo "docker images -a | grep $DOCKER_IMAGE"
docker images -a | grep $DOCKER_IMAGE
