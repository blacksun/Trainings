## Installation de la VM

- Importez le projet utilisant git
$ git clone https://github.com/blacksun/Trainings

- Allez sur le répertoire Vagrant-VM
$ cd Trainings/Vagrant-VM

- Remontez la VM avec
$ vagrant up --provision

- Connectez-vous avec
user-login : vagrant
user-password : vagrant

## Install Zend sever

Dans notre fichier de config de vagrant "vagrantFile", Nous avons mis :
config.vm.network "private_network", ip: "192.168.33.10" (on peut changer l'adresse ip)
Donc pour installer Zend Server, il suffit d'aller sur le browser et on met 192.168.33.10:10081 puis on suit les étapes de l'installation.


## Add project Hello World


Nous avons déjà remonté le projet (le répertoire) helloWorld avec vagrant 
Vous pouvez vérifier en passant par la console de notre machine sur virtual Box (ou putty.exe en utilisant host:127.0.0.1, port :2222)
$ ls /home/vagrant et vous allez trouver le repertoire helloWorld.


## Création du virtual host

1- Créez un nouveau virtual host "local.hello-world"
2- Utilisez le port 8000 parce que déjà défini dans le fichier de config
La ligne dans vagrantfile : vagrant config.vm.network "forwarded_port", guest: 80, host: 8000
3- Cliquez sur Next
4- Cliquez sur Next
5- Cochez "Edit the virtual host configuration template" et modifier le variable ${docroot} par /home/vagrant/helloWorld/public/ pour DocumentRoot et Directory
6- Cliquez sur Next

Note : "local.hello-world" est déjà défini dans les hosts de system avec cette ligne dans VagrantFile
config.vm.hostname = "local.hello-world"

## Creation du projet

1- Dans l'onglet "Applications" cliquer sur "Manage Apps"
2- Cliquez sur "Define Application"
3- Dans le champ "Base Url" il faut choisir le virtual host que vous avez construit "local.hello-world:8000" 

4- Donnez un nom pour votre application dans le champ "Application Name"
5- Cliquez sur "Define"
6- Redemarrez Zend server 

## Use Zend Studio

Nous allons besoin d'installer Zend studio sur notre machine (Windows, Linux ou Mac).

La question comment on importe notre projet dans la VM dans Zend studio.

1 - Dans la barre de menu, cliquez sur file puis new

2- Choisissez "PHP Project from remote server"

3- Ajoutez un nom pour votre projet

4- Cliquez sur "Add Server"

5- choisissez "Remote Zend Server" puis cliquez sur Next

6- Donnez un nom au serveur puis cliquez sur Next

7- Renseigner dans le champ Client Ip/Host : 192.168.33.10 (le host de notre VM)

8- Renseignez dans le champ Port :10081 puis cliquer sur Next

9- Cliquez sur "manage"

10- Mettez Alias Name vagrant (peut être autre chose)

11- Renseignez dans Host Name 127.0.0.1

12- Renseignez dans User : vagrant et Password : vagrant

13- le Port Ici doit être 2222

14- choisissez le Directory : c'est bien notre projet alors il sera : /home/vagrant/helloWorld

Pour vérifier que la conexion avec la VM est bonne essayez avec le boutton "test Connection"

15- Cliquez sur Finish

16- Choisissez la connexion dans " Profile" puis cliquez , Next et Finish

17- Cliquez sur Next

Vous aurez le répertoire helloWorld coché déjà.

Cliquez sur finish et vous aurez le projet sur Zend server lié à votre VM.

