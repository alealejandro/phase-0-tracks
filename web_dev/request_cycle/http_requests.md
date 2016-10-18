What are some common HTTP status codes?

	2xx class (Success)

		Client Request action was received, understood, accepted, and processed successfully.

		200 OK 
			GET PUT PATCH DELETE, POST

		201 Created
			POST

		204 No Content
			DELETE

	3xx class (Redirection)

		Client must take additional action to complete the request, typically used in URL redirection.

		304 Not Modified
			HTTP caching headers

	4xx class (Client Error)

		400 Bad Request

		401 Unauthorized

		403 Forbidden
			Authenticated, but not accessible to user

		404 Not Found
			Non existent resource requested

		405 Method Not Allowed
			Isn't allowed for the authenticated user

		409 Conflict
			Request couldn't be processed because collision conflicts.

		410 Gone
			Resource no longer available, faster & more permanent than 404.

		413 Request Entity Too Large
			Server can't handle.

		422 Unprocessable Entity
			Used for validation errors

		429 Too Many Requests
			Request rejected due to rate limiting.

	5xx class (Server Error)

		Server failed to fulfill a valid request. 

		500 Internal Server Error
			Generic error message.

		501 Not Implemented
			Server does not recognize the request method.

		502 Bad Gateway
			Server, acting as a gateway, received an invalid response from the upstream server.

		503 Service Unavailable
			Server unavailable because maintenance/overload - temporary state.

		504 Gateway Timeout
			Gateway server did not receive a timely response from the upstream server.

	https://saipraveenblog.wordpress.com/2014/09/29/common-http-status-codes/

What is the difference between a GET request and a POST request? When might each be used?

	GET: requests data from a specified resource (specify parameters in URL portion of request to retriece data from a web server).

		Document retrieval, etc.

	POST: submits data to be processed to a specified resource

		File update, form data, etc.

	GET is less secure than POST because data sent is part of URL - never use GET when sending passwords/sensitive info.

	http://www.w3schools.com/tags/ref_httpmethods.asp

	https://www.tutorialspoint.com/http/http_methods.htm

What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

	A cookie is sent from the website and stored in the user's browser, designed for websites:
	  - To remember stateful information (shopping carts)
	  - To record the user's browsing activity (clicking, logging in, history)
	  - To authenticate user's login
	  	- Security issues if cookie's data can be read by a third party
	  - To remember arbitrary info the user previously entered into FORM fields.

	A cookie will be sent for every request.

	Cookies are a HTTP feature and HTTP is stateless - if cookies were not sent for every request, the server would have no way to know which user is requesting whatever resource.

	https://stackoverflow.com/questions/1336126/does-every-web-request-send-the-browser-cookies

	https://en.wikipedia.org/wiki/HTTP_cookie
