sunit
testInputDoesNotReachDomainIfValidationFails
	| domainObject |
	ParasolBrowser new
		componentClass: UserErrorExampleApp;
		configureTestAppWith: [  :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		run: [ :browser | 
					domainObject := browser componentUnderTest domainObject.
					browser assert: domainObject anAttribute == nil.
					browser ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: false.
					(browser inputLabelled: 'A string more than one chars:') sendKeys: 'a'.
					(browser buttonLabelled: 'Something') click.
					browser
						assert: browser renderedErrors
						equals: {'A string more than one chars: The string should be longer than one character'}.
					browser assert: domainObject anAttribute == nil ]