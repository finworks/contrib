required
testRequiredIsDynamic
	| domainObject |
	domainObject := FakeObjectForTestingDynamicIsRequired new.
	ParasolBrowser new
		componentClass: DynamicMagritteExampleApp;
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		run: [ :browser | 
					browser deny: domainObject toggleIsTrue.
					self clearBothInputs: browser.
					(browser buttonLabelled: 'Something') click.
					browser
						assert: browser renderedErrors
						equals: {'Required when toggle is not true: Input is required but no input given'}.
					(browser inputLabelled: 'Required when toggle is not true:') sendKeys: 'some input'.
					(browser buttonLabelled: 'Something') click.
					browser deny: browser thereAreErrors.
					(browser buttonLabelled: 'Toggle flag') click.
					self clearBothInputs: browser.
					(browser buttonLabelled: 'Something') click.
					browser
						assert: browser renderedErrors
						equals: {'Required when toggle is true: Input is required but no input given'}.
					(browser inputLabelled: 'Required when toggle is true:') sendKeys: 'some input'.
					(browser buttonLabelled: 'Something') click.
					browser deny: browser thereAreErrors ]