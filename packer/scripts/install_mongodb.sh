#!/bin/bash
set -e

# Install MongoDB
#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv E52529D4
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.0.list
#echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list
apt-get update
apt-get install -y mongodb-org

sudo systemctl start mongod
sudo systemctl status mongod 

sudo systemctl enable mongod
