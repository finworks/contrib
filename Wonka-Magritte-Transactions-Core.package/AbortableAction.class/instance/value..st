initialize
value: component
	component validate
		ifTrue: [ 
			GRPlatform current commitInTransaction.
			component commit.
			[ block value: component ]
				on: UserError
				do: [ :err | 
					| keptError |
					keptError := MAValidationError new
						messageText: err messageText;
						yourself.
					GRPlatform current abortInTransaction.
					component errors add: keptError ] ]