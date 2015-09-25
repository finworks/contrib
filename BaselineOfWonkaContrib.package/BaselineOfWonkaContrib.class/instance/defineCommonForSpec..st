baselines
defineCommonForSpec: spec
	spec
		description: 'Wonka Contrib Project';
		configuration: 'Magritte3'
			with: [ 
					spec
						versionString: '3.3.1';
						operator: #=;
						repository: 'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main';
						loads: #('Magritte-Seaside' 'Deprecated') ];
		package: 'Wonka-Magritte-Transactions-Core' with: [ spec requires: #('Magritte3') ];
		package: 'Wonka-Magritte-Dynamic-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-Core') ];
		package: 'Wonka-Parasol';
		package: 'Wonka-Magritte-Dynamic-Tests' with: [ spec requires: #('Wonka-Parasol') ];
		package: 'Wonka-Magritte-Transactions-Tests' with: [ spec requires: #('Wonka-Parasol') ];
		group: 'Core' with: #('Wonka-Magritte-Transactions-Core' 'Wonka-Magritte-Dynamic-Core');
		group: 'Tests' with: #('Wonka-Parasol' 'Wonka-Magritte-Dynamic-Tests' 'Wonka-Magritte-Transactions-Tests');
		group: 'default' with: #('Core')