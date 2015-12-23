initialize
afterHandling: anExceptionClass alsoDo: aBlock
	afterExceptionHandlers at: anExceptionClass put: aBlock