sunit
testVisibilityIsDynamic
	| domainObject |
	domainObject := FakeObjectForTestingDynamicIsVisible new.
	self setupTestAppWithDomainObject: domainObject.
	browser
		run: [ 
			browser
				deny: domainObject toggleIsTrue;
				deny: (browser inputIsPresentLabelled: 'Visible when toggle is true:');
				assert: (browser inputIsPresentLabelled: 'Visible when toggle is not true:');
				clickOnButtonLabelled: 'Toggle flag';
				assert: (browser inputIsPresentLabelled: 'Visible when toggle is true:');
				deny: (browser inputIsPresentLabelled: 'Visible when toggle is not true:');
				clickOnButtonLabelled: 'Toggle flag';
				deny: (browser inputIsPresentLabelled: 'Visible when toggle is true:');
				assert: (browser inputIsPresentLabelled: 'Visible when toggle is not true:') ]