baselines
defineSqueakCommonForSpec: spec
	spec
		repository: WonkaSourceCode instance localContribRepository description;
		definePackagesIn: self squeakCommonPackages;
		defineGroupsIn: self squeakCommonGroups