# Guest book

---

#Add new module guestbook

## Use Zend Studio

![Landscape](../../img/newModule.png)

---

#Add new module guestbook

## Use Zend Studio

![Landscape](../../img/newModule2.png)

---

#Add new module guestbook

## Use Zend Studio

![Landscape](../../img/newModule3.png)

---

#Create new controller

	!php
	namespace Guestbook\Controller;
	use Zend\Mvc\Controller\AbstractActionController;
	class IndexController extends AbstractActionController
	{
	 public function indexAction()
	 {
	}

---

#Configure Route

	!php
	return array(
	'router' => array(
		'routes' => array(
		'guestbook' => array(
			'type' => 'literal',
				'options' => array(
						'route' => '/guestbook',
						'defaults' => array(
						'controller' => 'guestbook-index',
						'action' => 'index',
					),
				),
			),
		),
	),
	'controllers' => array(
		'invokables' => array(
			'guestbook-index' => 'Guestbook\Controller\IndexController'
			),
		),
	);

---

#Activate View



## View Manager

In module/Guestbook/config/module.config.php file :

	!php
	'view_manager' => array(
			 'template_path_stack' => array(
			 'guestbook' => __DIR__ . '/../view',
		 ),
	 ),

---

#Activate View

## Use View Model

In module/Guestbook/src/Guestbook/Controller/IndexController.php file :

	!php
	use Zend\View\Model\ViewModel;

And In IndexAction function we need to add :

	!php
	return new ViewModel();

Finaly add new file module/Guestbook/view/guestbook/index/index.phtml

	!html 
	<section>	
		<h1>Guestbook</h1>
		<p>New view for guestbook module</p>
	</section>

---

# Use theme

Add css and js files in public/

Edit layout and include css and js file into project with $this->headLink() and $this->headScript()

Fixed the header and footer in Layout.phtml like this (example menu):

	!html
	<!-- header -->
	<div id="menu-wrapper">
		<div id="menu">
		<ul>
			<li class="current_page_item"><a href="#">Homepage</a></li>
			<li><a href="#">Guest Book</a></li>
		</ul>
		</div>
	</div>
	<!-- content -->
	<div class="container">
		<?php echo $this->content; ?>
	</div>
	<!-- footer -->
	<div id="footer">
		<p>2012. Untitled. All rights reserved. Design by</p>
	</div>
---

# Recovering data

## Use Service Layer

![Landscape](../../img/ServiceLayerSketch.gif)


---

# Recovering data

## Use Service Layer

    !php
    public function indexAction()
    {
        $entryService = new Guestbook\Service\Entry();
        return ['entries' => $entryService->getLasts()];
    }

---

# Recovering data

## Service class
	
	!php
	namespace Guestbook\Service;
	class Entry
	{
	    public function getLasts()
	    {
	        $entries = [];
	        $entry = new \stdClass();
	        $entry->message = "Ceci n'est pas un message";
	        $entry->date = "May 15, 2012";
	        $entry->author = 'Gabriele Santini';
	        $entries[] = $entry;
	        $entries[] = $entry;
	        $entries[] = $entry;
	        
	        return $entries;
	    }
	}
