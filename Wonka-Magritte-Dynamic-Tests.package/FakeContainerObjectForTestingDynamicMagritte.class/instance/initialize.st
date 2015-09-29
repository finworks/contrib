as yet unclassified
initialize
	super initialize.
	parts := { FakeContainedObjectForTestingDynamicMagritte new percentage: 10; yourself.
	                FakeContainedObjectForTestingDynamicMagritte new percentage: 30; yourself. }.
	totalAmount := 0.0.
	submitted := false.