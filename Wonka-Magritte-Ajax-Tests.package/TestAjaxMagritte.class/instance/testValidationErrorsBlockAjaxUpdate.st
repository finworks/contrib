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
				assert: (self amountsAreShownAs: #(0.0 0.0)) ]