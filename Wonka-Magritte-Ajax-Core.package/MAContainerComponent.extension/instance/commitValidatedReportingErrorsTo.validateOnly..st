*Wonka-Magritte-Ajax-Core
commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean
	^ (super commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean)
		and: [ 
			(self children collect: [ :each | each commitValidatedReportingErrorsTo: aCollectionOfErrors validateOnly: aBoolean ])
				allSatisfy: [ :isValid | isValid ] ]