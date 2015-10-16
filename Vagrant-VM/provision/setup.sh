#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

installpkg(){
    dpkg-query --status $1 >/dev/null || apt-get install -y $1
}

apt-get update
#Install debconf-utils
apt-get install debconf-utils -y > /dev/null
#Set password to MySql (root)
debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
#Install MySql
echo 'Install mysql server...'
apt-get install mysql-server -y > /dev/null
#Install Git
echo 'Install git...'
apt-get install git 
#Download Zend Server
echo 'Download git...'
wget http://downloads.zend.com/zendserver/8.5.1/ZendServer-8.5.1-RepositoryInstaller-linux.tar.gz
tar zxf ./ZendServer-8.5.1-RepositoryInstaller-linux.tar.gz
cd ./ZendServer-RepositoryInstaller-linux/
#Install Zend Server
echo 'Install Zend Server...'
yes | sudo ./install_zs.sh 5.6
