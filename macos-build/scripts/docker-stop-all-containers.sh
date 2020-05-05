#!/usr/bin/env bash

docker container ls -qa | xargs docker stop
