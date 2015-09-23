baselines
testGroups
	^ Dictionary new
		at: 'Tests' put: self testPackages keys asArray;
		yourself