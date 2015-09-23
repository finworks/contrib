baselines
corePackages
	^ Dictionary new
		at: 'Wonka-Magritte-Transactions-Core' put: #();
		at: 'Wonka-Magritte-Dynamic-Core' put: #('Wonka-Magritte-Transactions-Core');
		yourself