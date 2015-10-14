accessing
childComponent
	^ domainObject asComponent
		addValidatedForm:
				{([ :component | 
					component validate
						ifTrue: [ 
							component commit.
							domainObject doSomething ] ] -> 'Something').
					([ :component | 
					component validate
						ifTrue: [ 
							component commit.
							domainObject flipToggle ] ] -> 'Toggle flag')};
		yourself