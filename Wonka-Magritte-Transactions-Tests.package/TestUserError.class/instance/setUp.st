sunit
setUp
	super setUp.
	domainObject := FakeObjectForTestingUserError new.
	browser := ParasolBrowser new
		componentClass: UserErrorExampleApp;
		configureTestAppWith: [ :testApp | testApp addFilterFirst: TransactionBoundaryFilter new ];
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		yourself.
