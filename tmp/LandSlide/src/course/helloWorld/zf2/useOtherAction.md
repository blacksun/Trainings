#Use new Action (Hello world)

##Add new action

	!php
	public function helloAction()
	{
	}

---

#Use new Action (Hello world)

##Use Model View to send data

	!php
	use Zend\View\Model\ViewModel;
	public function helloAction()
	{
		return ViewModel();
	}

---

#Use new Action (Hello world)

##Display "Hello World" in the page

	!php
	use Zend\View\Model\ViewModel;
	public function helloAction()
	{
		return ViewModel(array(
			'message' => 'Hello world'
		));
	}

---

#Use new Action (Hello world)

##Display "Hello World" in the page

	!php
	use Zend\View\Model\ViewModel;
	public function helloAction()
	{
		return ViewModel(array(
			'message' => 'Hello world'
		));
	}

And now in the script view hello.phtml:

	!html
	<h1><?php echo $this->message; ?></h1>
	
