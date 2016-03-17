#!/bin/bash
export FOLDER=/tmp/Angular2CodeDeploy
NODE="/home/ec2-user/node-v5.8.0-linux-x64/bin"
cd $FOLDER
echo "Running application"
$NODE/node server.js
