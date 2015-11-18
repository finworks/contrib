*Wonka-Magritte-Ajax-Core
commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean
	^ (super commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean)
		and: [ 
			| numberOfErrors |
			numberOfErrors := aCollectionOfErrors size.
			self
				onValidationError: [ 
					memento validateDescription: description.
					aBoolean ifFalse: [memento commitDescription: description] ]
				addTo: aCollectionOfErrors.
			numberOfErrors = aCollectionOfErrors size ]