#!/bin/bash
export FOLDER=/tmp/Angular2CodeDeploy
echo "Creating application folder $FOLDER"
mkdir -p $FOLDER
cd $FOLDER
export NODE="/home/ec2-user/node-v5.9.0-linux-x64/bin"
echo "Setting node folder to $NODE"
export PATH=$PATH:$NODE
$NODE/node --version
echo "Installing npm forever plugin"
$NODE/npm install forever -g
echo "Installing typings and webpack"
$NODE/npm install webpack typings webpack-dev-server -g
echo "Killing existing Node process"
forever stopall
echo "After installation completed."

