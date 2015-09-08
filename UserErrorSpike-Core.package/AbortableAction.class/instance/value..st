initialize
value: component
	component validate
		ifTrue: [ 
			TransactionBoundaryFilter commitInTransaction.
			component commit.
			[ block value: component ]
				on: UserError
				do: [ :err | 
					| keptError |
					keptError := MAValidationError new
						messageText: err messageText;
						yourself.
					TransactionBoundaryFilter abortInTransaction.
					component errors add: keptError ] ]