#!/bin/bash

# If you are building your own image, you should change this name.
# If you don't have a docker hub account, make up a name and use the container locally.
TAG=esp8266-image

time sudo docker build -f $(dirname $0)/Dockerfile \
		--tag $TAG \
		. 2>&1 | tee docker-build.log

