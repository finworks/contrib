initialize
initialize
	"AjaxMagritteExampleApp initialize"

	(WAAdmin register: self asApplicationAt: '/ajaxmagritteexample')
		addFilterFirst: (TransactionBoundaryFilter new);
		addLibrary: JQDevelopmentLibrary;
		addLibrary: WonkaMagritteLibrary