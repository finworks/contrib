*Wonka-Magritte-Ajax-Core
commitValidatedReportingErrorsTo: aCollectionOfErrors
	self children do: [ :each | 
		self 
			onValidationError: [ each commitValidatedReportingErrorsTo: aCollectionOfErrors ]
			addTo: aCollectionOfErrors ]