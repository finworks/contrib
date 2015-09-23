baselines
defineCommonForSpec: spec
	spec description: 'Wonka Contrib Project'.
	spec
		definePackagesIn: self corePackages;
		defineGroupsIn: self coreGroups;
		definePackagesIn: self testPackages;
		defineGroupsIn: self testGroups.
	spec group: 'default' with: #('Core')