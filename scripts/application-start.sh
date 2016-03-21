#!/bin/bash
FOLDER=/tmp/Angular2CodeDeploy
cd $FOLDER
echo "Running application"
$NODE/forever start -al ./forever.log -ao out.log -ae err.log ./server.js
