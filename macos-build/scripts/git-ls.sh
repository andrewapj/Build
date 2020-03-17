#!/usr/bin/env bash

###
# Lists all the git repos and their branches under a given path.
###

CODE_DIR=$1
START_DIR=`pwd`

clear

for d in $(find $CODE_DIR -type d -d 1);
do 
	cd ${d};
	echo ${d};
	git branch;
done

cd $START_DIR
