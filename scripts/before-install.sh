#!/bin/bash
export FOLDER=/tmp/Angular2CodeDeploy
if [ -d $FOLDER ]
then
 rm -rf $FOLDER
fi
mkdir -p $FOLDER
