#!/bin/bash
source `dirname $0`/config.sh
PATH=$PATH:$NODE_HOME
cd $APP_FOLDER
echo "Running application with node version"
$NODE_HOME/node --version
$NODE_HOME/forever start -al $APP_FOLDER/forever.log -ao $APP_FOLDER/out.log -ae $APP_FOLDER/err.log $APP_FOLDER/server.js
