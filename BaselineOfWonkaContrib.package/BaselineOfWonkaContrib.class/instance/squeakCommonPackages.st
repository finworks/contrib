baselines
squeakCommonPackages
	^ Dictionary new
		at: 'Wonka-Magritte-Transactions-Pharo-Core' put: #();
		at: 'Wonka-Magritte-Transactions-Core' put: #('Wonka-Magritte-Transactions-Pharo-Core');
		yourself