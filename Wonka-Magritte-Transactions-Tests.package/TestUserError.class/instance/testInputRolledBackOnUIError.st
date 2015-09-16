sunit
testInputRolledBackOnUIError
	| domainObject |
	ParasolBrowser new
		componentClass: UserErrorExampleApp;
		configureTestAppWith: [  :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		run: [ :browser | 
					domainObject := browser componentUnderTest domainObject.
					browser ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: true.
					(browser inputLabelled: 'A string more than one chars:') sendKeys: 'ABCDEF'.
					(browser buttonLabelled: 'Something') click.
					browser assert: (browser renderedErrors) equals: {'Some domain error happened'}.
					browser assert: domainObject anAttribute = nil ]