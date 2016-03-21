#!/bin/bash
echo "After install"
echo "Installing dependencies into [$FOLDER]"
cd $FOLDER
$NODE/npm install
echo "After installation completed."

