ajax
setupTestAppWithDomainObject: domainObject
	browser := ParasolBrowser new
		componentClass: AjaxMagritteExampleApp;
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		configureTestAppWith: [ :testApp | 
					testApp
						addFilterFirst: TransactionBoundaryFilter new;
						addLibrary: JQDevelopmentLibrary;
						addLibrary: WonkaMagritteLibrary ];
		yourself