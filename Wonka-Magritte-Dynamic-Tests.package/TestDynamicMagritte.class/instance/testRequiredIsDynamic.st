sunit
testRequiredIsDynamic
	| domainObject |
	domainObject := FakeObjectForTestingDynamicIsRequired new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser deny: domainObject toggleIsTrue.
			self clearBothInputs: browser.
			browser
				clickOnButtonLabelled: 'Something';
				assert: browser renderedErrors equals: {'Required when toggle is not true: Input is required but no input given'};
				type: 'some input' intoInputLabelled: 'Required when toggle is not true:';
				clickOnButtonLabelled: 'Something';
				deny: browser thereAreErrors;
				clickOnButtonLabelled: 'Toggle flag'.
			self clearBothInputs: browser.
			browser
				clickOnButtonLabelled: 'Something';
				assert: browser renderedErrors equals: {'Required when toggle is true: Input is required but no input given'};
				type: 'some input' intoInputLabelled: 'Required when toggle is true:';
				clickOnButtonLabelled: 'Something';
				deny: browser thereAreErrors ]