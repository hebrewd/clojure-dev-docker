#!/bin/sh

BRANCH=$(git rev-parse --abbrev-ref HEAD)
IMAGENAME=$(basename $PWD)
docker run -it --rm \
	-v $HOME/.gitconfig:$HOME/.gitconfig \
	-v $HOME/.ssh:$HOME/.ssh \
	${IMAGENAME}:${BRANCH} /bin/fish
