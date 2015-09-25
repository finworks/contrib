baselines
defineGemstoneForSpec: spec
	spec
		repository: WonkaSourceCode instance localContribRepository description;
		package: 'Wonka-Magritte-Transactions-GemStone-Core';
		package: 'Wonka-Magritte-Transactions-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-GemStone-Core') ];
		group: 'Core' with: #('Wonka-Magritte-Transactions-GemStone-Core')