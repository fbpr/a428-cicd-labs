#!/bin/bash
cd /var/www/src
sudo npm run build
sudo pm2 start npm --name "my-app" -- start
sudo pm2 startup
sudo pm2 save
sudo pm2 restart all