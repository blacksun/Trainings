# Service Manager

## Dependency Injection (DI)

from this

    !php
    public function indexAction() {
        $entryService = new Guestbook\Service\Entry();
        return ['entries' => $entryService->getLasts()];
    }

to this
    
    !php
    public function setEntryService($entryService) {
    	$this->entryService = $entryService;
    }
    public function getEntryService() {
    	return $this->entryService;
    }
    public function indexAction()
    {
        return ['entries' => $this->getEntryService()->getLasts()];
    }
---

# Service Manager

## What is a Service anyway?

Mainly an object instance. Preconfigured (wired).

It can also be an array (intended: parameters array) 

## IoC Container

ZF2's choice is to use extensiviely this component to manage almost all DI issues. 

In framework itself AND in your application. 

The advantage is that all the wiring logic is managed in this one component. It is a container. 

---

# Service Manager

## How does it works?

Service Locator pattern:

You define your services by configuration or by code giving them a name

    !php
	['service_manager' => 
		['typeOfService'] => [
			'myService' => ... ]
		]];
		
	$sm->set<typeOfService>('myService', ...);	


You recover them later simply calling them by name

    !php
    $sm->get('myService');

---

# Type of Services

## Explicit (Services)

---

# Type of Services

## Invokables  


---

# Type of Services

## Factories  