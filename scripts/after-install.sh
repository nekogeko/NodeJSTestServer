#!/bin/bash
echo "After install"
#FOLDER=/tmp/Angular2CodeDeploy
echo "Installing dependencies into [$FOLDER]"
cd $FOLDER
$NODE/npm install
echo "After installation completed."

