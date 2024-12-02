#!/bin/sh
docker run -ti --rm \
  --network mynet \
  nicolaka/netshoot /bin/bash
