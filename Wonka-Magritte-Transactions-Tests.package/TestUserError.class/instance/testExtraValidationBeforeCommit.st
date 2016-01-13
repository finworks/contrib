sunit
testExtraValidationBeforeCommit
	domainObject := FakeObjectForTestingUserError new.
	self setUpTestAppWithDomainObject: domainObject andApplicationClass: ValidatingBeforeCommitExampleApp.
	browser
		run: [ 
			browser
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: false;
				type: 'ABCDEF' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				clickOnButtonLabelled: 'No';
				deny: domainObject anAttribute = 'ABCDEF';
				clickOnButtonLabelled: 'Something';
				clickOnButtonLabelled: 'Yes';
				assert: domainObject anAttribute = 'ABCDEF';
				deny: browser thereAreErrors .
				]