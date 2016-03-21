#!/bin/bash
export FOLDER=/tmp/Angular2CodeDeploy
echo "Creating application folder $FOLDER"
mkdir -p $FOLDER
cd $FOLDER
echo "Installing NodeJS"
cd ~
rm -Rf ~/node-v5.9.0-linux-x64
tar -xzf ~/node-v5.9.0-linux-x64.tar.gz
export NODE=/home/ec2-user/node-v5.9.0-linux-x64/bin
echo "Setting node folder to $NODE"
export PATH=$PATH:$NODE
$NODE/node --version
echo "Installing npm forever plugin"
$NODE/npm install forever -g
echo "Installing typings and webpack"
$NODE/npm install webpack typings webpack-dev-server -g
echo "Killing existing Node process"
$NODE/forever stopall
echo "After installation completed."

