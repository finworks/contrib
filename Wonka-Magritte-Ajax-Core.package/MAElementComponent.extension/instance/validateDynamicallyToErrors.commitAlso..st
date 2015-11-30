*Wonka-Magritte-Ajax-Core
validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean
	^ (super validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean)
		and: [ 
			| numberOfErrors |
			numberOfErrors := aCollectionOfErrors size.
			self
				onValidationError: [ 
					memento validateDescription: description.
					aBoolean ifTrue: [memento commitDescription: description] ]
				addTo: aCollectionOfErrors.
			numberOfErrors = aCollectionOfErrors size ]