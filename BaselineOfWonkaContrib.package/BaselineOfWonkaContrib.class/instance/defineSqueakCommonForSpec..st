baselines
defineSqueakCommonForSpec: spec
	spec
		repository: WonkaSourceCode instance localContribRepository description;
		package: 'Wonka-Magritte-Transactions-Pharo-Core';
		package: 'Wonka-Magritte-Transactions-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-Pharo-Core') ];
		group: 'Core' with: #('Wonka-Magritte-Transactions-Pharo-Core')