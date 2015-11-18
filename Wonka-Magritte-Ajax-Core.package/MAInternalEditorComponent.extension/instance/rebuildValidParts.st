*Wonka-Magritte-Ajax-Core
rebuildValidParts
	component
		ifNotNilDo: [ :innerComponent | 
			innerComponent areAllVisibleValid
				ifTrue: [ component := self buildComponent ] ]