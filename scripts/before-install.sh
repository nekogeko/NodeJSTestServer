#!/bin/bash
source `dirname $0`/config.sh
echo "NODE VERSION IS [$NODE_VERSION]"
echo "Creating application folder [$APP_FOLDER] for application [$APPLICATION_NAME]"
mkdir -p $APP_FOLDER
cd $APP_FOLDER
echo "Installing NodeJS"
cd $HOME_FOLDER
rm -Rf $NODE_VERSION
tar -xzf $NODE_VERSION.tar.gz
echo "Setting up NODE environment variable"
echo "Setting node folder to [$NODE_HOME]"
PATH=$PATH:$NODE_HOME
#export PATH
$NODE_HOME/node --version
echo "Installing npm forever plugin"
$NODE_HOME/npm install forever -g
echo "Installing typings and webpack"
$NODE_HOME/npm install webpack typings webpack-dev-server -g
echo "Killing existing Node process"
$NODE_HOME/forever stopall
echo "After installation completed."

