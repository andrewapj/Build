#!/bin/zsh

docker container ls -qa | xargs docker container rm -f
