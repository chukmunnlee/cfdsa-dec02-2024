#!/bin/bash 
# Create a volume
#

#docker network create mynet

docker volume create data-vol

docker run -d -p 3306:3306 \
  --mount type=volume,src=data-vol,dst=/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=abc123 \
  --network mynet \
  --name mydb \
  mysql:8.4
