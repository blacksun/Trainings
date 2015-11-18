
# Better Theme Integration

## Use view helpers

Edit layout and include css and js file into project with $this->headLink() and $this->headScript()

Separate header, footer and sidebar in layout.phtml using partials

---

# Use view helpers

## Template
	
Use partialLoop in guestbook/index/index.phtml to iterate

---


# Use view helpers

## Link

	!php
	echo $this->url('guestbook');

## Link with params

	!php
	echo $this->url('guestbook', array('action' => 'other'), 'param' => value);
	
