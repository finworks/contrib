evaluating
value: component
	component validate
		ifTrue: [ 
			GRPlatform current commitInTransaction.
			component commit.
			self safelyValue: component ]