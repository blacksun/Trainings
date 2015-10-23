#Public index.php

	
	!php
	if (php_sapi_name() === 'cli-server') {
	$path = realpath(__DIR__ . parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
	if (__FILE__ !== $path && is_file($path)) {
	  return false;
	}
	unset($path);
	}

---

#Public index.php (Setup autoloading)

	!php
	require 'init_autoloader.php';

---

#Public index.php (what is Zend\Mvc\Application)

	!php
	Zend\Mvc\Application::init(require 'config/application.config.php')->run();


