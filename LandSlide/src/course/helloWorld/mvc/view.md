#View

##What is view doing?

- The responsibility of the view is to deal with UI logic. 
- In context of web the goal for view is to produce a response to the user (the browser not the human).
- Views are implemented as code snippets, not as classes. This is because views are typically very simple and contain only the mixture of HTML and inline PHP code.

---

#View

##How use View in ZF2? (How MVC work?)

- First, the site visitor enters an URL in his web browser, for example http://localhost, and the web browser sends the request to the web server over the Internet.

- Web server’s PHP engine runs the index.php entry script. The only thing the entry script does is creating the Zend\Mvc\Application class instance.

- The application uses its router component for parsing the URL and determining to which controller to pass the request. If the route match is found, the controller is instantiated and its appropriate action method is called.

---

#View

##How use View in ZF2? (How MVC work?)

- In the controller’s action method, parameters are retrieved from GET and POST variables. To process the incoming data, the controller instantiates appropriate model classes and calls their methods.

- Model classes use business logic algorithms to process the input data and return the output data. The business logic algorithms are application-specific, and typically include retrieving data from database, managing files, interacting with external systems and so on.

- The result of calling the models are passed to the corresponding view script for the rendering of the HTML page.

---

#View

##How use View in ZF2? (How MVC work?)

- View script uses the model-provided data for rendering the HTML page.

- Controller passes the resulting HTTP response to application.

- Web server returns the resulting HTML web page to the user’s web browser.

- The user sees the page in browser window.


