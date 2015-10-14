descriptions
descriptionParts
	<magritteDescription >
	^ MAToManyRelationDescription new 
		selectorAccessor: #parts;
		classes: { FakeContainedObjectForTestingAjaxMagritte };
		yourself