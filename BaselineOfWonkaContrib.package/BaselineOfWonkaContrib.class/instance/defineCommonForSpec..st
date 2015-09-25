baselines
defineCommonForSpec: spec
	spec
		description: 'Wonka Contrib Project';
		package: 'Wonka-Magritte-Transactions-Core';
		package: 'Wonka-Magritte-Dynamic-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-Core') ];
		group: 'Core' with: #('Wonka-Magritte-Transactions-Core' 'Wonka-Magritte-Dynamic-Core');
		package: 'Wonka-Parasol';
		package: 'Wonka-Magritte-Dynamic-Tests' with: [ spec requires: #('Wonka-Parasol') ];
		package: 'Wonka-Magritte-Transactions-Tests' with: [ spec requires: #('Wonka-Parasol') ];
		group: 'Tests' with: #('Wonka-Parasol' 'Wonka-Magritte-Dynamic-Tests' 'Wonka-Magritte-Transactions-Tests');
		group: 'default' with: #('Core')