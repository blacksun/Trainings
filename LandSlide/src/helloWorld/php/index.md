# Public index.php

- Decline static file requests back to the PHP built-in webserve

 !php
 	if (php_sapi_name() === 'cli-server') {
	    $path = realpath(__DIR__ . parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH));
	    if (__FILE__ !== $path && is_file($path)) {
	        return false;
	    }
	    unset($path);
	}
	
---
	
## Zend\Mvc\Application

