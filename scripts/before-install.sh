#!/bin/bash
source config.sh
echo "NODE VERSION IS [$NODE_VERSION]"
FOLDER=/tmp/Angular2CodeDeploy
export FOLDER
echo "Creating application folder [$FOLDER] for application [$APPLICATION_NAME]"
mkdir -p $FOLDER
cd $FOLDER
echo "Installing NodeJS"
cd /home/ec2-user
rm -Rf ~/node-v5.9.0-linux-x64
tar -xzf ~/node-v5.9.0-linux-x64.tar.gz
echo "Setting up NODE environment variable"
NODE=/home/ec2-user/node-v5.9.0-linux-x64/bin
export NODE
echo "Setting node folder to [$NODE]"
PATH=$PATH:$NODE
export PATH
$NODE/node --version
echo "Installing npm forever plugin"
$NODE/npm install forever -g
echo "Installing typings and webpack"
$NODE/npm install webpack typings webpack-dev-server -g
echo "Killing existing Node process"
$NODE/forever stopall
echo "After installation completed."

