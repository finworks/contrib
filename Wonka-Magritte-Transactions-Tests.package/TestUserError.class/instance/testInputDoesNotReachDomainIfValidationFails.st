sunit
testInputDoesNotReachDomainIfValidationFails
	domainObject := FakeObjectForTestingUserError new.
	self setUpTestAppWithDomainObject: domainObject.
	browser
		run: [
			browser
				assert: domainObject anAttribute == nil;
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: false;
				type: 'a' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				assert: browser renderedErrors
					equals: {'A string more than one chars: The string should be longer than one character'};
				assert: domainObject anAttribute == nil ]