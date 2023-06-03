#!/bin/bash
cd /var/www/src
sudo npm run build
sudo pm2 start npm -- run production