sunit
testDoActionAfterHandlingSpecificTypeOfExceptionOrSubclass
	domainObject := FakeObjectForTestingUserError new
		errorClassToRaise: FakeUserErrorSubClassForTestingSpecificErrorHandling;
		yourself.
	self setUpTestAppWithDomainObject: domainObject andApplicationClass: AfterHandlingActionsExampleApp.
	browser
		run: [ 
			browser
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: true;
				type: 'ABCDEF' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				clickOnButtonLabelled: 'Ok';
				assert: browser renderedErrors equals: {'Some domain error happened'}.
				]