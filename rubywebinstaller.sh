#!/bin/bash

#Update downloaded ubuntu image and install curl
apt-get -y update && apt-get -y install curl 

# install RVM. RVM let’s you install and manage multiple ruby environments
curl -sSL https://rvm.io/mpapis.asc | gpg --import -

curl -sSL https://get.rvm.io | bash -s stable

source /etc/profile.d/rvm.sh

rvm reload 

rvm requirements run 

rvm install 2.4.1 

rvm use 2.4.1 --default 

gem install rails 	
	
gem install bundler 
	
#Install git to enable git clone functions	
apt-get -y install git

mkdir  /usr/local/etc/catapiproject

cd /usr/local/etc/catapiproject

#Clone CatApi Git repo
git clone https://github.com/Yougo007/CatAPI.git

#Setup rails
apt-get -y install libpq-dev 

cd /usr/local/etc/catapiproject/*
bundle install 

apt-get install -y tzdata

#Start rails server
rails server


