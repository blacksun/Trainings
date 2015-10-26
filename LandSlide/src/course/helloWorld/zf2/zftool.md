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

1 - Open console (command prompt)
2 - Create new document ZFTOOL
	
	!sh
	$ mkdir ZFTOOL

4 -Install zftool 

	!sh
	$ composer require zendframework/zftool:dev-master
 	
zf.php (Zend Tool) will be installed in the vendor/bin folder. 

You may run it with php vendor/bin/zf.php.

	!sh
	$ php zf.php 
