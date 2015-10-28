sunit
testInputReachesDomainIfNoErrors
	domainObject := FakeObjectForTestingUserError new.
	self setUpTestAppWithDomainObject: domainObject.
	browser
		run: [
			browser
				assert: domainObject anAttribute == nil;
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: false;
				type: 'abcd' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				deny: browser thereAreErrors;
				assert: domainObject anAttribute = 'abcd' ]