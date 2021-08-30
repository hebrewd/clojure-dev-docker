#!/bin/sh
BRANCH=$(git rev-parse --abbrev-ref HEAD)
IMAGENAME=$(basename $PWD)
docker build ./ -t $IMAGENAME:$BRANCH --build-arg username=$(whoami)
