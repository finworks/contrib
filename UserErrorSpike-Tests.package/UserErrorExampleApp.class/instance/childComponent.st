hooks
childComponent
	domainObject := FakeObjectForTestingCallbackErrors new.
	^ domainObject asComponent
		addValidatedForm: {((AbortableAction new with: [ :component| domainObject doSomething ]) -> 'Something')};
		yourself