hooks
childComponent
	domainObject := FakeObjectForTestingUserError new.
	^ domainObject asComponent
		addValidatedForm: {((AbortableAction new with: [ :component| domainObject doSomething ]) -> 'Something')};
		yourself