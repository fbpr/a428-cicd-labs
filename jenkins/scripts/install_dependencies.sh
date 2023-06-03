#!/bin/bash

yum -y update
curl -sL https://rpm.nodesource.com/setup_16.x | sudo -E bash -
yum -y install nodejs npm

file="/usr/bin/node"
if [ -f $file ] && [ ! -L $file ] ; then
  echo "$file exists and is not a symlink"
  sudo ln -s /usr/bin/nodejs
else
  echo "$file exists and is already a symlink"
fi

cd /var/www/
sudo npm install
sudo npm install pm2 -g