evaluating
value: component
	[ block value: component.
	  component reset. ]
		on: UserError
		do: [ :err | 
			| keptError relatedDescription |
			relatedDescription := component description detect: [ :aDescription| aDescription isRelatedToUserError: err ] ifNone: [ nil ].
			keptError := MAValidationError new
				messageText: err messageText;
				setDescription: relatedDescription;
				yourself.
			GRPlatform current abortInTransaction.
			component errors removeAll.
			component errors add: keptError ].
