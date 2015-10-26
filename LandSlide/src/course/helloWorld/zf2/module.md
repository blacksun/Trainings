# Module



##Namespace

When you use classes from different libraries in your program, the class names may conflict.

To achieve the same goal, Zend Framework 2 uses the PHP 5.3 language feature called namespaces.

The namespaces allow to solve the name collisions between code components, and provide you with the ability to make the long names shorter.

	!php
	namespace Application;

---

# Module



## Get Configure

	!php
	public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
   
---

# Module



## Get Autoloader Configure

	!php
	public function getAutoloaderConfig()
    {
        return array(
            'Zend\Loader\StandardAutoloader' => array(
                'namespaces' => array(
                    __NAMESPACE__ => __DIR__ . '/src/' . __NAMESPACE__,
                ),
            ),
        );
    }
   