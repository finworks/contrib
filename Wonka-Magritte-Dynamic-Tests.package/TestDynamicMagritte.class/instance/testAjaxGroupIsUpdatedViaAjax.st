ajax
testAjaxGroupIsUpdatedViaAjax
	| domainObject |
	domainObject := FakeContainerObjectForTestingDynamicMagritte new.
	self setupBrowserOn: DynamicMagritteExampleApp2 withDomainObject: domainObject.
	self configureTestAppForAjax.
	browser
		run: [ 
			browser
				assert: (self amountsAreShownAs: #(0.0 0.0));
				type: '200' intoInputLabelled: 'Total amount:';
				deny: (browser loadsNewPage: [ browser fireOnChangeOnInputLabelled: 'Total amount:']);
				assert: (self amountsAreShownAs: #(20.0 60.0)) ]