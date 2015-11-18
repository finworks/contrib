ajax
testInvalidInputOnDisappearingInternalEditorIsIgnored
	| domainObject |
	domainObject := FakeContainerObjectForTestingAjaxMagritte new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: '' intoInputLabelled: 'Something else on another component:';
				ensureCheckboxLabelled: 'Show the related object' isChecked: true;
				type: '200' intoInputLabelled: 'Total amount:';
				deny: (browser loadsNewPage: [ browser fireOnChangeOnInputLabelled: 'Total amount:' ]);
				assert: (self amountsAreShownAs: #(20.0 60.0));
				assert: browser thereAreErrors;
				ensureCheckboxLabelled: 'Show the related object' isChecked: false;
				type: '100' intoInputLabelled: 'Total amount:';
				deny: (browser loadsNewPage: [ browser fireOnChangeOnInputLabelled: 'Total amount:' ]);
				assert: (self amountsAreShownAs: #(10.0 30.0));
				deny: browser thereAreErrors ]