ajax
testValidationErrorsOnUnRelatedElementOnSameContainerComponentDoNotBlockAjaxUpdate
	| domainObject |
	domainObject := FakeContainerObjectForTestingAjaxMagritte new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: '' intoInputLabelled: 'Something that can be invalid:';
				type: '200' intoInputLabelled: 'Total amount:';
				deny: (browser loadsNewPage: [ browser fireOnChangeOnInputLabelled: 'Total amount:' ]);
				assert: (self amountsAreShownAs: #(20.0 60.0));
				assert: browser renderedErrors equals: {'Something that can be invalid: Input is required but no input given'};
				assert: (browser inputLabelled: 'Something that can be invalid:' hasValue: '')  ].
	self assert: domainObject somethingThatCanBeInvalid equals: 'somethingThatCanBeInvalid'