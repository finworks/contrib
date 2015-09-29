evaluating
value: component
	[ block value: component.
	  component reset. ]
		on: errorToHandle
		do: [ :err | 
			| keptError |
			keptError := MAValidationError new
				messageText: err messageText;
				yourself.
			GRPlatform current abortInTransaction.
			component errors removeAll.
			component errors add: keptError ].
