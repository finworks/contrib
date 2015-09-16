initialize
initialize
      "UserErrorExampleApp initialize"

	(WAAdmin register: self asApplicationAt: '/usererrorexample')
		addFilterFirst: (TransactionBoundaryFilter new)