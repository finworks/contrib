*Wonka-Magritte-Ajax-Core
areAllVisibleValid
	| visibleErrors |
	visibleErrors := OrderedCollection new.
	self shouldBeValidated ifTrue: [ self validateDynamicallyToErrors: visibleErrors commitAlso: false ].
	^ visibleErrors isEmpty