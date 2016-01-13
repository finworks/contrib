as yet unclassified
childComponent
	^ domainObject asComponent
		addValidatedForm:
				{((ValidatedAction new
						with: [ :component | domainObject doSomething ];
						addValidation: [ :component| component confirm:  'Are you sure?' ];
						yourself) -> 'Something')}
		yourself