*Wonka-Magritte-Ajax-Core
resetDescription: aDescription
	| modelValue valueToDisplay |
	modelValue := self model readUsing: aDescription.
	valueToDisplay := modelValue isNil
		ifTrue: [ aDescription default ]
		ifFalse: [ modelValue ].
	cache at: aDescription put: valueToDisplay