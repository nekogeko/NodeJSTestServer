#!/bin/bash
echo "After install"
echo "Installing dependencies"
cd $FOLDER
$NODE/npm install
echo "Killing existing Node process"
kill -9 $(pidof node)
echo "After installation completed."

