baselines
defineSqueakCommonForSpec: spec
	spec
		package: 'Wonka-Magritte-Transactions-Pharo-Core';
		package: 'Wonka-Magritte-Transactions-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-Pharo-Core') ];
		group: 'Core' with: #('Wonka-Magritte-Transactions-Pharo-Core')