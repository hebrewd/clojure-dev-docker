#!/bin/sh

docker run -it --rm \
	-v $HOME/.gitconfig:$HOME/.gitconfig \
	-v $HOME/.ssh:$HOME/.ssh \
	clojure-dev-docker:latest /bin/fish
