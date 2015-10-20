baselines
baseline: spec
	<baseline>
	spec
		repository: 'github://finworks/contrib:master';
		for: #common do: [ self defineCommonForSpec: spec ];
		for: #gemstone do: [ self defineGemstoneForSpec: spec ];
		for: #squeakCommon do: [ self defineSqueakCommonForSpec: spec ]