#!/bin/bash
NODE="/home/ec2-user/node-v5.8.0-linux-x64/bin"
echo "Setting node folder to $NODE"
$NODE/node --version
echo "Installing typings and webpack" >> after-install.txt
$NODE/npm install webpack typings webpack-dev-server -g
echo "Installing dependencies" >> after-install.txt
$NODE/npm install
echo "After installation completed." >> after-install.txt
