evaluating
value: component
	GRPlatform current commitInTransaction.
	^ self safelyValue: component.