evaluating
value: component
	component validate
		ifTrue: [ 
			GRPlatform current commitInTransaction.
			component commit.
			super value: component ]