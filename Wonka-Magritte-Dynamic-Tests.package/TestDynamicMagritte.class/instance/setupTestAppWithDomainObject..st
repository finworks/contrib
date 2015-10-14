setup
setupTestAppWithDomainObject: domainObject
	browser := ParasolBrowser new
		componentClass: DynamicMagritteExampleApp;
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		yourself