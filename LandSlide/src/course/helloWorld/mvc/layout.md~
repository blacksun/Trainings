# Layout


- Pages of your web site typically have some common structure that can be shared among them. For example, a typical page has the <!DOCTYPE> declaration to identify the HTML document, and the <head> and <body> elements:

	!html
	<!DOCTYPE html>
	<html lang="en">
	  <head>
	    <title>Welcome</title>
	    <!-- Include metas, stylesheets and scripts here -->  
	  </head>
	  <body> 
	    <!-- Include page content here -->  
	  </body>
	</html>

---

# Layout

- In the Skeleton Application, the default layout template file is called layout.phtml and is located inside of the view/layout directory in Application module’s directory

	!php
	return array(
	    'view_manager' => array(
		'template_map' => array(
		    'application/index/index' => __DIR__ .  '/../view/application/index/index.phtml',
		    'site/layout'             => __DIR__ . '/../view/layout/layout.phtml',
		    'error/index'             => __DIR__ . '/../view/error/index.phtml',
		    'error/404'               => __DIR__ . '/../view/error/404.phtml',
		),
		'template_path_stack' => array(
		    'application' => __DIR__ . '/../view',
		),
		'layout' => 'site/layout',
	    ),
	);

---

#Layout

Let’s look at the layout.phtml template file in more details.

	!php 
	$this->doctype(); 

above generates the <!DOCTYPE> 6 declaration of the HTML page with the Doctype view helper.

	!php
	echo $this->headTitle('ZF2 '. 
          $this->translate('Skeleton Application'))
               ->setSeparator(' - ')
               ->setAutoEscape(false) 

headTitle we have the HeadTitle view helper that allows to define the title for the page (“ZF2 Skeleton Application”).

---

#Layout

	!php
	echo $this->headMeta()
        ->appendName('viewport', 'width=device-width, initial-scale=1.0')
        ->appendHttpEquiv('X-UA-Compatible', 'IE=edge')

- The HeadMeta view helper allows to define the <meta name="viewport"> tag containing meta information for the web browser to control layout on different display devices, including mobile browsers.

---

#Layout
	!php
	echo $this->headLink(array('rel' => 'shortcut icon', 
                'type' => 'image/vnd.microsoft.icon', 
                'href' => $this->basePath().'/img/favicon.ico'))
        ->prependStylesheet($this->basePath().'/css/style.css')
        ->prependStylesheet($this->basePath().'/css/bootstrap-theme.min.css')
        ->prependStylesheet($this->basePath().'/css/bootstrap.min.css')

- The HeadLink view helper allows to define the <link> tags. With the <link> tags, you typically define the “favicon” for the page (located in APP_DATA\public\img\favicon.ico file) and the CSS stylesheets.
- The stylesheets common to all site pages are included by the prependStylesheet() method of the HeadLink view helper.

---

#Layout

	!php
	echo $this->headScript()
       ->prependFile($this->basePath().'/js/bootstrap.min.js')
       ->prependFile($this->basePath().'/js/jquery.min.js')
       ->prependFile($this->basePath().'/js/respond.min.js', 'text/javascript'\
	, 
                        array('conditional' => 'lt IE 9',))
       ->prependFile($this->basePath().'/js/html5shiv.js', 'text/javascript', 
                        array('conditional' => 'lt IE 9',));

- $this->headScript include the JavaScript files that all your web pages will load. 

---

#Layout

	!php
	echo $this->inlineScript()

- this is very important, because this line defines the inline PHP code that represents the page content placeholder we talked about in the beginning of this section. When the ZF2 page renderer evaluates the layout template, it echoes the actual page content here.

