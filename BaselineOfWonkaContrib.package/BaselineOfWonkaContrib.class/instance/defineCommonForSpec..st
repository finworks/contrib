baselines
defineCommonForSpec: spec
	spec
		description: 'Wonka Contrib Project';
"		configuration: 'Magritte3'
			with: [ 
					spec
						versionString: '3.3.1';
						operator: #=;
						repository: 'http://www.smalltalkhub.com/mc/Magritte/Magritte3/main';
						loads: #('Magritte-Seaside' 'Deprecated') ];
		configuration: 'Parasol'
			with: [ 
					spec
						versionString: '0.24';
						operator: #=;
						repository: 'http://ss3.gemstone.com/ss/Parasol' ];
		package: 'Wonka-Magritte-Transactions-Core' with: [ spec requires: #('Magritte3') ];
		package: 'Wonka-Parasol-Core' with: [ spec requires: #('Parasol') ];
"		package: 'Wonka-Magritte-Transactions-Core';
		package: 'Wonka-Parasol-Core';
		package: 'Wonka-Magritte-Dynamic-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-Core') ];
		package: 'Wonka-Magritte-Dynamic-Tests' with: [ spec requires: #('Wonka-Parasol-Core') ];
		package: 'Wonka-Magritte-Transactions-Tests' with: [ spec requires: #('Wonka-Parasol-Core') ];
		package: 'Wonka-Magritte-Ajax-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-Core' 'Wonka-Magritte-Dynamic-Core') ];
		package: 'Wonka-Magritte-Ajax-Tests' with: [ spec requires: #('Wonka-Parasol-Core') ];
		group: 'Core' with: #('Wonka-Magritte-Ajax-Core' 'Wonka-Magritte-Transactions-Core' 'Wonka-Magritte-Dynamic-Core');
		group: 'Tests' with: #('Wonka-Parasol-Core'  'Wonka-Magritte-Ajax-Tests'  'Wonka-Magritte-Dynamic-Tests' 'Wonka-Magritte-Transactions-Tests');
		group: 'default' with: #('Core')