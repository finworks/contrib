evaluating
value: component
	self commitInTransaction.
	^ self safelyValue: block withComponent: component