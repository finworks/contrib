setup
setUp
	super setUp.
	domainObject := FakeObjectForTestingUserError new.
	browser := ParasolBrowser new
		componentClass: ErrorHandlingActionExampleApp;
		configureTestAppWith: [ :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		yourself.
