dynamic description booleans
testReadonlyIsDynamic
	| domainObject |
	domainObject := FakeObjectForTestingDynamicIsReadonly new.
	self setupBrowserOn: DynamicMagritteExampleApp withDomainObject: domainObject.
	browser
		run: [ 
			browser
				deny: domainObject toggleIsTrue;
				deny: (self inputIsEditableLabelled: 'Readonly when toggle is not true:');
				assert: (self inputIsEditableLabelled: 'Readonly when toggle is true:');
				clickOnButtonLabelled: 'Toggle flag';
				assert: domainObject toggleIsTrue;
				assert: (self inputIsEditableLabelled: 'Readonly when toggle is not true:');
				deny: (self inputIsEditableLabelled: 'Readonly when toggle is true:');
				clickOnButtonLabelled: 'Toggle flag';
				deny: domainObject toggleIsTrue;
				deny: (self inputIsEditableLabelled: 'Readonly when toggle is not true:');
				assert: (self inputIsEditableLabelled: 'Readonly when toggle is true:') ]