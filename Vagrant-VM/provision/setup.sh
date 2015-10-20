#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

installpkg(){
    dpkg-query --status $1 >/dev/null || apt-get install -y $1
}

sudo apt-get update
#Install debconf-utils
sudo apt-get install debconf-utils -y > /dev/null
#Set password to MySql (root)
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
#Install MySql
echo 'Install mysql server...'
sudo apt-get install mysql-server -y > /dev/null
#Install Git
echo 'Install git...'
yes | sudo apt-get install git
#install PYTHON
echo 'Install phyton-pip ...' 
yes | sudo apt-get install phyton-pip
#install LandSlide
echo 'Install LandSlide ...' 
yes | sudo pip install landslide
#Download Zend Server
echo 'Download git...'
wget http://downloads.zend.com/zendserver/8.5.1/ZendServer-8.5.1-RepositoryInstaller-linux.tar.gz
tar zxf ./ZendServer-8.5.1-RepositoryInstaller-linux.tar.gz
cd ./ZendServer-RepositoryInstaller-linux/
#Install Zend Server
echo 'Install Zend Server...'
yes | sudo ./install_zs.sh 5.6
#Add composer 
echo 'Download composer.phar ...'
curl -sS https://getcomposer.org/installer |/usr/local/zend/bin/php
sudo mv composer.phar /usr/local/bin/composer

