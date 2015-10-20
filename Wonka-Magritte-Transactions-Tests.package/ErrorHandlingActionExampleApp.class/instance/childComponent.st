accessing
childComponent
	^ domainObject asComponent
		addValidatedForm:
				{((ErrorHandlingAction new
						with: [ :component | 
							component validate
								ifTrue: [ 
									component commit.
									domainObject doSomething ] ]) -> 'Something')};
		yourself