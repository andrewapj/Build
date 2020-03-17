#!/usr/bin/env bash

###
# Does a git pull for each repo under the given path, using the current branch.
##

CODE_DIR=$1
START_DIR=`pwd`

clear

for d in $(find $CODE_DIR -type d -d 1);
do 
	cd ${d};
	echo ${d};
	git pull;
done

cd $START_DIR
