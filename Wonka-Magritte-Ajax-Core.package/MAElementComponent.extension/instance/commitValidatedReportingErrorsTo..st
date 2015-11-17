*Wonka-Magritte-Ajax-Core
commitValidatedReportingErrorsTo: aCollectionOfErrors
	self onValidationError: [ 
		memento 
			validateDescription: description;
		 	commitDescription: description.] 
		addTo: aCollectionOfErrors