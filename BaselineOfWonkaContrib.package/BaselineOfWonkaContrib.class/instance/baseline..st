baselines
baseline: spec
	<baseline>
	spec
		for: #common do: [ self defineCommonForSpec: spec ];
		for: #gemstone do: [ self defineGemstoneForSpec: spec ];
		for: #squeakCommon do: [ self defineSqueakCommonForSpec: spec ]