#!/bin/bash

sed -i s#Defaults.*requiretty#Defaults\ \!requiretty#g /etc/sudoers
cd /tmp/
echo "Downloading the rpm"
wget  http://34.227.217.144/chef-12.19.36-1.el7.x86_64.rpm

echo "Installating the rpm"

sudo rpm -ivh *.rpm

sudo mkdir -p /etc/chef

cd /etc/chef

wget http://34.227.217.144/client.rb
wget http://34.227.217.144/knife.rb
wget http://34.227.217.144/deepthi143.pem
chmod 400 deepthi143.pem
sudo chef-client
