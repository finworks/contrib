setup
setupBrowserOn: componentClass withDomainObject: domainObject
	browser := ParasolBrowser new
		componentClass: componentClass;
		initializeComponentWith: [ :component | component domainObject: domainObject ];
		yourself