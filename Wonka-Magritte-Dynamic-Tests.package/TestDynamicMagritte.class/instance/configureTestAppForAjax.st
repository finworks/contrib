ajax
configureTestAppForAjax
	browser
		configureTestAppWith: [ :testApp | 
			testApp
				addFilterFirst: TransactionBoundaryFilter new;
				addLibrary: JQDevelopmentLibrary;
				addLibrary: WonkaMagritteLibrary ]