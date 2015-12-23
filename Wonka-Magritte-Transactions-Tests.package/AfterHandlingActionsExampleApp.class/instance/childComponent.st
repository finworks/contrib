as yet unclassified
childComponent
	^ domainObject asComponent
		addValidatedForm:
				{((ValidatedAction new
						with: [ :component | domainObject doSomething ];
						afterHandling: FakeUserErrorForTestingSpecificErrorHandling
							alsoDo: [ :component | component inform: 'You did something' ]) -> 'Something')};
		yourself