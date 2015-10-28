actions
doSomething
	raiseError
		ifTrue: [ 
			| exceptionToRaise |
			exceptionToRaise := raiseMarkedError
				ifTrue: [ FakeExceptionForTestingRelatedUserErrors ]
				ifFalse: [ UserError ].
			exceptionToRaise signal: 'Some domain error happened' ]