#!/bin/bash
source `dirname $0`/config.sh
cd $APP_FOLDER
echo "Running application with node version"
$NODE_HOME/node --version
$NODE_HOME/forever start -al `dirname $0`/forever.log -ao `dirname $0`/out.log -ae `dirname $0`/err.log `dirname $0`/server.js
