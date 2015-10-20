baselines
defineGemstoneForSpec: spec
	spec
		package: 'Wonka-Magritte-Transactions-GemStone-Core';
		package: 'Wonka-Magritte-Transactions-Core' with: [ spec requires: #('Wonka-Magritte-Transactions-GemStone-Core') ];
		group: 'Core' with: #('Wonka-Magritte-Transactions-GemStone-Core')