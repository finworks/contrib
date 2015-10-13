hooks
childComponent
	^ domainObject asComponent
		addValidatedForm: {((ValidatedAction new with: [ :component| domainObject doSomething ]) -> 'Something')};
		yourself