initialize
initialize
	"DynamicMagritteExampleApp2 initialize"

	(WAAdmin register: self asApplicationAt: '/dynamicmagritteexample2')
		addFilterFirst: (TransactionBoundaryFilter new);
		addLibrary: JQDevelopmentLibrary;
		addLibrary: WonkaMagritteLibrary