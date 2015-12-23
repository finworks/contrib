sunit
testInputRolledBackOnUserErrorInSetterToo
	domainObject := FakeObjectForTestingUserErrorInSetter new
		raiseError: true;
		yourself.
	self setUpTestAppWithDomainObject: domainObject andApplicationClass: UserErrorExampleApp.
	browser
		run: [ 
			browser
				assert: (browser isCheckboxLabelled: 'Let doSomething raise a UserErrror' checked: true);
				type: 'ABCDEF' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				assert: browser renderedErrors equals: {'Some domain error happened'};
				assert: domainObject anAttribute = nil ]