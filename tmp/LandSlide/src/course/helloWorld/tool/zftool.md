#ZFTOOL

##Why ZFTOOL ? 

This tool gives you the ability to:

- create a ZF2 project, installing a skeleton application.
- create a new module inside an existing ZF2 application.
- get the list of all the modules installed inside an application.
- get the configuration file of a ZF2 application.
- install the ZF2 library choosing a specific version.

---

#ZFTOOL

##Installation using Composer

- Open console (command prompt) in your app or in empty folder

- Install zftool 

	!sh
	$ composer require zendframework/zftool:dev-master
 	
zf.php (Zend Tool) will be installed in the vendor/bin folder. 

You may run it with

	!sh
	$ php vendor/bin/zf.php 

or better you can do an alias **zf** for that command
	
---

#ZFTOOL

##Using Phar

- Download the zftool.phar [here](http://packages.zendframework.com/zftool.phar)

- make it executable and run it

	!sh
	$ zftool.phar
