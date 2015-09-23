baselines
testPackages
	^ Dictionary new
		at: 'Wonka-Parasol' put: #();
		at: 'Wonka-Magritte-Dynamic-Tests' put: #('Wonka-Parasol');
		at: 'Wonka-Magritte-Transactions-Tests' put: #('Wonka-Parasol');
		yourself