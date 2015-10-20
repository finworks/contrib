descriptions
descriptionParts
	<magritteDescription>
	^ MAToManyRelationDescription new
		selectorAccessor: #parts;
		priority: 3;
		classes: {FakeContainedObjectForTestingAjaxMagritte};
		yourself