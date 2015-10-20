#Controller

##Namespace
	
	!php
	namespace Application\Controller;

---

#Controller

##Include class with use

	!php
	use Zend\Mvc\Controller\AbstractActionController;
	use Zend\View\Model\ViewModel;

---

#Controller

##New Class Controller 

	!php
	class IndexController extends AbstractActionController
	{
	    public function indexAction()
	    {
	        return new ViewModel();
	    }
	}
