#!/bin/bash
source `dirname $0`/config.sh
PATH=$PATH:$NODE_HOME
echo "After install"
echo "Installing dependencies into [$APP_FOLDER]"
cd $APP_FOLDER
$NODE_HOME/npm install
echo "After installation completed."

