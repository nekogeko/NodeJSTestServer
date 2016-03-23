#!/bin/bash
source `dirname $0`/config.sh
echo "NODE VERSION IS [$NODE_VERSION]"
echo "Creating application folder [$APP_FOLDER] for application [$APPLICATION_NAME]"
sudo rm -Rf $APP_FOLDER
mkdir -p $APP_FOLDER
cd $HOME_FOLDER
echo "Installing NodeJS"
if [ -e $HOME_FOLDER/$NODE_NAME.tar.gz ]; then
	echo "NodeJs archive already present, skipping download"
else
	echo "NodeJS archive missing, downloading it"
	wget https://nodejs.org/dist/$NODE_VERSION/$NODE_NAME.tar.gz 
fi
cd $HOME_FOLDER
rm -Rf $NODE_NAME
tar -xzf $NODE_NAME.tar.gz
echo "Setting up NODE environment variable"
echo "Setting node folder to [$NODE_HOME]"
PATH=$PATH:$NODE_HOME
$NODE_HOME/node --version
echo "Installing npm forever plugin"
$NODE_HOME/npm install forever -g
echo "Installing typings and webpack"
$NODE_HOME/npm install webpack typings webpack-dev-server -g
echo "Killing existing Node process"
$NODE_HOME/forever stopall
echo "After installation completed."

