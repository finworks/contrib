ajax
testValidationErrorsOnInternalEditorDoNotBlockAjaxUpdate
	| domainObject |
	domainObject := FakeContainerObjectForTestingAjaxMagritte new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: '' intoInputLabelled: 'Something else on another component:';
				type: '200' intoInputLabelled: 'Total amount:';
				deny: (browser loadsNewPage: [ browser fireOnChangeOnInputLabelled: 'Total amount:' ]);
				assert: (self amountsAreShownAs: #(20.0 60.0));
				assert: browser renderedErrors
					equals: {'Something else on another component: Input is required but no input given'};
				assert: (browser inputLabelled: 'Something else on another component:' hasValue: '') ].
	self assert: domainObject relatedObject somethingElseOnAnotherComponent equals: 'something'