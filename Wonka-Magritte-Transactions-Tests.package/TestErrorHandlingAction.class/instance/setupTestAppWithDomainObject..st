setup
setupTestAppWithDomainObject: anObject
	browser := ParasolBrowser new
		componentClass: ErrorHandlingActionExampleApp;
		configureTestAppWith: [ :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		initializeComponentWith: [ :component | component domainObject: anObject ];
		yourself