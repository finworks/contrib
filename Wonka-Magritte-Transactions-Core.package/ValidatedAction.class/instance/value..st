evaluating
value: component
	(validationBlocks allSatisfy: [ :validationBlock | validationBlock value: component ])
		ifTrue: [ 
			self commitInTransaction.
			self
				safelyValue: [ :c | 
					component commit.
					block value: component ]
				withComponent: component ]