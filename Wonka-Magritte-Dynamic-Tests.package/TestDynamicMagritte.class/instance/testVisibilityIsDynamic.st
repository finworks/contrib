visible
testVisibilityIsDynamic
	| domainObject |
	domainObject := FakeObjectForTestingDynamicIsVisible new.
	ParasolBrowser new
		componentClass: DynamicMagritteExampleApp;
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		run: [ :browser |
			browser deny: domainObject toggleIsTrue.
			self deny: (browser inputIsPresentLabelled: 'Visible when toggle is true:').
			self assert: (browser inputIsPresentLabelled: 'Visible when toggle is not true:').
			(browser buttonLabelled: 'Toggle flag') click.
			self assert: (browser inputIsPresentLabelled: 'Visible when toggle is true:').
			self deny: (browser inputIsPresentLabelled: 'Visible when toggle is not true:').
			(browser buttonLabelled: 'Toggle flag') click.
			self deny: (browser inputIsPresentLabelled: 'Visible when toggle is true:').
			self assert: (browser inputIsPresentLabelled: 'Visible when toggle is not true:') 
			].
