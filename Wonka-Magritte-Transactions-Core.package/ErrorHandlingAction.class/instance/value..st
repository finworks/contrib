evaluating
value: component
	GRPlatform current commitInTransaction.
	^ self safelyValue: block withComponent: component