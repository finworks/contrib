sunit
testFieldsMarkedInErrorWhenUIErrorThrown
	domainObject := FakeObjectForTestingRelatedUserErrors new.
	self setUpTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: true;
				ensureCheckboxLabelled: 'Raise marked error' isChecked: true;
				type: 'ABCDEF' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				assert: (self inputWithLabelIsMarkedAsError: 'A string more than one chars:');
				ensureCheckboxLabelled: 'Raise marked error' isChecked: false;
				clickOnButtonLabelled: 'Something';
				deny: (self inputWithLabelIsMarkedAsError: 'A string more than one chars:') ]