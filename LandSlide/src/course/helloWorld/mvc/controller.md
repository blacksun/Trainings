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

