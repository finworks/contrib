*Wonka-Magritte-Ajax-Core
commitDescription: aDescription 
	super commitDescription: aDescription.
	(cache includesKey: aDescription) 
	   ifTrue: [
		self
			push:
				(Dictionary new
					at: aDescription put: (cache at: aDescription);
					yourself)].