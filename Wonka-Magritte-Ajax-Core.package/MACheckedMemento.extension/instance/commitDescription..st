*Wonka-Magritte-Ajax-Core
commitDescription: aDescription 
	super commitDescription: aDescription.
	(cache includesKey: aDescription) 
	   ifTrue: [
		original at: aDescription put: (cache at: aDescription) ].