#!/bin/bash
FOLDER=/tmp/Angular2CodeDeploy
cd $FOLDER
echo "Running application"
NODE="/home/ec2-user/node-v5.9.0-linux-x64/bin"
$NODE/forever start -al ./forever.log -ao out.log -ae err.log ./server.js
