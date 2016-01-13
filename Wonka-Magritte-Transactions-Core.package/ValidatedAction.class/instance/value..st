evaluating
value: component
	(validationBlocks allSatisfy: [ :validationBlock| validationBlock value: component ])
		ifTrue: [ 
			GRPlatform current commitInTransaction.
			self
				safelyValue: [ :c | 
					component commit.
					block value: component ] 
				withComponent: component
				]