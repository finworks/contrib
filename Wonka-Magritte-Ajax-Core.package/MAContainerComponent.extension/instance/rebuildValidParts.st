*Wonka-Magritte-Ajax-Core
rebuildValidParts
	self areAllVisibleValid
		ifTrue: [ self rebuild ]
		ifFalse: [ 
			self children
				do: [ :each | 
					each magritteDescription isVisible
						ifTrue: [ each rebuildValidParts ]
						ifFalse: [ children removeKey: each magritteDescription ] ] ]