setup
setUpTestAppWithDomainObject: anObject
	browser := ParasolBrowser new
		componentClass: UserErrorExampleApp;
		configureTestAppWith: [ :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		initializeComponentWith: [ :component | component domainObject: anObject ];
		yourself