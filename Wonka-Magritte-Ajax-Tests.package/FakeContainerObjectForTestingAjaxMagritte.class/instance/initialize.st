initialization
initialize
	super initialize.
	parts := { FakeContainedObjectForTestingAjaxMagritte new percentage: 10; yourself.
	                FakeContainedObjectForTestingAjaxMagritte new percentage: 30; yourself. }.
	totalAmount := 0.0.
	submitted := false.
	relatedObject := FakeRelatedObjectForTestingAjaxMagritte new.
	somethingThatCanBeInvalid := 'somethingThatCanBeInvalid'