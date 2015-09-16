sunit
testInputReachesDomainIfNoErrors
	| domainObject |
	ParasolBrowser new
		componentClass: UserErrorExampleApp;
		configureTestAppWith: [  :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		run: [ :browser | 
					domainObject := browser componentUnderTest domainObject.
					browser assert: domainObject anAttribute == nil.
					browser ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: false.
					(browser inputLabelled: 'A string more than one chars:') sendKeys: 'abcd'.
					(browser buttonLabelled: 'Something') click.
					browser deny: browser thereAreErrors.
					browser assert: domainObject anAttribute = 'abcd' ]