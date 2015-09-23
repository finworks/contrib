baselines
gemStonePackages
	^ Dictionary new
		at: 'Wonka-Magritte-Transactions-Gemstone-Core' put: #();
		at: 'Wonka-Magritte-Transactions-Core' put: #('Wonka-Magritte-Transactions-Gemstone-Core');
		yourself