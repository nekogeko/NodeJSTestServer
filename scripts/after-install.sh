#!/bin/bash
NODE="/home/ec2-user/node-v5.9.0-linux-x64/bin"
echo "Setting node folder to $NODE"
$NODE/node --version
echo "Installing typings and webpack"
$NODE/npm install webpack typings webpack-dev-server -g
echo "Installing dependencies"
$NODE/npm install
echo "Killing existing Node process"
kill -9 $(pidof node)
echo "After installation completed."
