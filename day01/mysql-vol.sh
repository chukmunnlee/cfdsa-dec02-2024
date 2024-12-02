#!/bin/bash 
# Create a volume
#
# docker volume create myvol

docker run -d -p 3306:3306 \
  --mount type=volume,src=myvol,dst=/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=abc123 \
  mysql:8.4
