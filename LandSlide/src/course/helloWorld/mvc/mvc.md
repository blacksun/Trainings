#MVC

##How MVC work?

- First, the site visitor enters an URL in his web browser, for example http://localhost, and the web browser sends the request to the web server over the Internet.

- Web server’s PHP engine runs the index.php entry script. The only thing the entry script does is creating the Zend\Mvc\Application class instance.

- The application uses its router component for parsing the URL and determining to which controller to pass the request. If the route match is found, the controller is instantiated and its appropriate action method is called.

---

#MVC



##How MVC work?

- In the controller’s action method, parameters are retrieved from GET and POST variables. To process the incoming data, the controller instantiates appropriate model classes and calls their methods.

- Model classes use business logic algorithms to process the input data and return the output data. The business logic algorithms are application-specific, and typically include retrieving data from database, managing files, interacting with external systems and so on.

- The result of calling the models are passed to the corresponding view script for the rendering of the HTML page.

---

#MVC



##How MVC work?

- View script uses the model-provided data for rendering the HTML page.

- Controller passes the resulting HTTP response to application.

- Web server returns the resulting HTML web page to the user’s web browser.

- The user sees the page in browser window.

---

#MVC



##How MVC work? (Visual approach)

![Landscape](../../../img/mvc.png)




