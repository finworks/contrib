initialization
initialize
	super initialize.
	parts := OrderedCollection new addAll: { FakeContainedObjectForTestingAjaxMagritte new percentage: 10; yourself.
	                FakeContainedObjectForTestingAjaxMagritte new percentage: 30; yourself. }; yourself.
	totalAmount := 0.0.
	submitted := false.
	relatedObject := FakeRelatedObjectForTestingAjaxMagritte new.
	somethingThatCanBeInvalid := 'somethingThatCanBeInvalid'.
	showRelatedObject := true.