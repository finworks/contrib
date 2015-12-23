setup
setUpTestAppWithDomainObject: anObject andApplicationClass: anApplicationClass
	browser := ParasolBrowser new
		componentClass: anApplicationClass;
		configureTestAppWith: [ :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		initializeComponentWith: [ :component | component domainObject: anObject ];
		yourself