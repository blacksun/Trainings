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

#Active View



## View Manager

In module/Guestbook/config/module.config.php file :

	!php
	'view_manager' => array(
			 'template_path_stack' => array(
			 'guestbook' => __DIR__ . '/../view',
		 ),
	 ),

---

#Active View

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

#Use theme

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

#Action and View

##Action
	
	!php
	public function bookAction()
	{
		return new ViewModel();
	}

---

#Action and View

##Action
	
	!php
	public function bookAction()
	{
		return new ViewModel();
	}
	
##View
	
	!html
	<div id="wrapper">
		<div id="page">Second page </div> 
	</div>
	
---

#Use new Action and View

##Router

In the first time we need to configure our router in Guestbook/config/module.config.php

	!php
	'book' => array(
		'type' => 'literal',
		'options' => array(
			'route' => '/book',
			'defaults' => array(
			'controller' => 'guestbook-index',
			'action' => 'book',
			),
		),
	),

---

#Use new Action and View

##Link

	!html
    <a href="<?php echo $this->url('book', array('action' => 'book')); ?>">
    Guest book
    </a>

---

#Use new Action and View

##Link

	!html
    <a href="<?php echo $this->url('book', array('action' => 'book')); ?>">
    Guest book
    </a>

##Link with params

	!php 
	echo $this->url('book', array('action' => 'book'), 'parm' =>value);
	
