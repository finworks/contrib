evaluating
value: component
	[ 
	block value: component.
	component reset ]
		on: UserError
		do: [ :err | 
			| keptError |
			keptError := MAValidationError new
				messageText: err messageText;
				setDescription: (component descriptionRelatedToUserError: err);
				yourself.
			GRPlatform current abortInTransaction.
			component errors removeAll.
			component errors add: keptError ]