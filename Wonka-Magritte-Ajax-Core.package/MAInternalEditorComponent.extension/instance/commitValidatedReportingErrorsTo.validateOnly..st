*Wonka-Magritte-Ajax-Core
commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean
	^ (super commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean)
		and: [ component commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean ]