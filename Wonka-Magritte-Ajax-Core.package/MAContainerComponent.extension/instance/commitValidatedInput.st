*Wonka-Magritte-Ajax-Core
commitValidatedInput
	errors := OrderedCollection new.
	self commitValidatedReportingErrorsTo: errors validateOnly: false.
	^ errors isEmpty