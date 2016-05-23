#!/bin/zsh

# mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen

# robomongo
zsh $PWD/ubuntu/robomongo.zsh

# heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# java
sudo apt-get install openjdk-9-jdk -y

# phantom
sudo apt-get install phantomjs

# jq
git clone https://github.com/stedolan/jq.git
cd jq
autoreconf -i
./configure
make
sudo make install
