#Controller

##Namespace

When you use classes from different libraries in your program, the class names may conflict.

To achieve the same goal, Zend Framework 2 uses the PHP 5.3 language feature called namespaces.
The namespaces allow to solve the name collisions between code components, and provide you with the ability to make the long names shorter.

	!php
	namespace Application\Controller;

---

#Controller

##How use alias

It's also possible to use the alias (short name for the class) with the help of PHP’s use statement:

	!php
	use Zend\Mvc\Controller\AbstractActionController;

Although the alias allows to use a short class name instead of the full name, its usage is optional. You are not required to always use aliases, and can refer the class by its full name.

---

#Controller

##New Class Controller 

In Zend Framework 2, the controller is a class that is generally called {Controller name}Controller

	!php
	class IndexController extends AbstractActionController

Each action is a public method within the controller class that is named {action name}Action

	!php
	public function indexAction()

