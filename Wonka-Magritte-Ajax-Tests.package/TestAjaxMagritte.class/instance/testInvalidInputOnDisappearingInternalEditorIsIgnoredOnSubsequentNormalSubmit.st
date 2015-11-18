ajax
testInvalidInputOnDisappearingInternalEditorIsIgnoredOnSubsequentNormalSubmit
	| domainObject |
	domainObject := FakeContainerObjectForTestingAjaxMagritte new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: '' intoInputLabelled: 'Something else on another component:';
				ensureCheckboxLabelled: 'Show the related object' isChecked: false;
				type: '200' intoInputLabelled: 'Total amount:';
				fireOnChangeOnInputLabelled: 'Total amount:';
				assert: (self amountsAreShownAs: #(20.0 60.0));
				deny: browser thereAreErrors;
				clickOnButtonLabelled: 'Save';
				deny: browser thereAreErrors.
].
	self assert: domainObject relatedObject somethingElseOnAnotherComponent equals: 'something'