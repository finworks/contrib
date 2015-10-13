ajax
testValidationErrorsBlockAjaxUpdate
	| domainObject |
	domainObject := FakeContainerObjectForTestingDynamicMagritte new.
	self setupBrowserOn: DynamicMagritteExampleApp2 withDomainObject: domainObject.
	self configureTestAppForAjax.
	browser
		run: [
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: 'invalid input for a number' intoInputLabelled: 'Total amount:';
				fireOnChangeOnInputLabelled: 'Total amount:';
				assert: (self amountsAreShownAs: #(0.0 0.0)) ]