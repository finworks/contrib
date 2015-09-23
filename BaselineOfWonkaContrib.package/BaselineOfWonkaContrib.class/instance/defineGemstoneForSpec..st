baselines
defineGemstoneForSpec: spec
	spec
		repository: WonkaSourceCode instance localContribRepository description;
		definePackagesIn: self gemStonePackages;
		defineGroupsIn: self gemStoneGroups