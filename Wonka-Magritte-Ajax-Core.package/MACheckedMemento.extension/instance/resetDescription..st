*Wonka-Magritte-Ajax-Core
resetDescription: aDescription
	super resetDescription: aDescription.
	original at: aDescription put: (self model readUsing: aDescription)