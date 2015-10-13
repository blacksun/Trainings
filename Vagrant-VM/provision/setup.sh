#!/usr/bin/env bash
export DEBIAN_FRONTEND=noninteractive

installpkg(){
    dpkg-query --status $1 >/dev/null || apt-get install -y $1
}

apt-get update
wget http://downloads.zend.com/zendserver/8.5.1/ZendServer-8.5.1-RepositoryInstaller-linux.tar.gz
tar zxf ./ZendServer-8.5.1-RepositoryInstaller-linux.tar.gz
cd ./ZendServer-RepositoryInstaller-linux/
yes | sudo ./install_zs.sh 5.6
echo "ServerName localhost" > /etc/apache2/conf-enabled/servername.conf
a2enmod suexec
a2dissite 000-default.conf
service apache2 restart


