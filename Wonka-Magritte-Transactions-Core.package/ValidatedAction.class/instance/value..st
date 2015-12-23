evaluating
value: component
	component validate
		ifTrue: [ 
			GRPlatform current commitInTransaction.
			self
				safelyValue: [ :c | 
					component commit.
					block value: component ] 
				withComponent: component
				]