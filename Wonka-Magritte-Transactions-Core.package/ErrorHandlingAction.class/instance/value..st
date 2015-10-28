evaluating
value: component
	[ 
	block value: component.
	component errors isEmpty
		ifTrue: [ component reset ] ]
		on: UserError
		do: [ :err | 
			err setDescription: (component descriptionRelatedToUserError: err).
			GRPlatform current abortInTransaction.
			component errors removeAll.
			component errors add: err ]