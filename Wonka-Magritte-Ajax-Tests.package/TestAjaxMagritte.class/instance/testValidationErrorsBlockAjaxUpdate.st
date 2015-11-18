ajax
testValidationErrorsBlockAjaxUpdate
	| domainObject |
	domainObject := FakeContainerObjectForTestingAjaxMagritte new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: 'invalid input for a number' intoInputLabelled: 'Total amount:';
				fireOnChangeOnInputLabelled: 'Total amount:';
				assert: (self amountsAreShownAs: #(0.0 0.0));
				assert: browser renderedErrors equals: {'Total amount: Invalid input given'};
				assert: (browser inputLabelled: 'Total amount:' hasValue: 'invalid input for a number') ]