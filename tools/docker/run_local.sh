#!/bin/bash

TAG=esp8266-image

HOST_WORKDIR=${PWD}
WORKDIR=/home
COMMAND=${1:-/bin/bash}

sudo docker run \
  --rm \
  --name esp8266-container \
  --volume "${HOST_WORKDIR}":"${WORKDIR}" \
  --workdir "${WORKDIR}" \
  -it $TAG \
  $COMMAND

