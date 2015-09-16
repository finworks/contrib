*Wonka-Magritte-Dynamic-Core
childAt: aDescription
	^ children
		at: aDescription
		ifAbsent: [ 
			aDescription isVisible
				ifTrue: [ 
					children
						at: aDescription
						put: (aDescription componentClass memento: self memento description: aDescription parent: self) ]
				ifFalse: [ nil ] ]