descriptions
descriptionARelatedObject
	<magritteDescription>
	^ MAToOneRelationDescription new
		selectorAccessor: #relatedObject;
		componentClass: MAInternalEditorComponent;
		classes: (Array with: FakeRelatedObjectForTestingAjaxMagritte);
		priority: 2;
		beRequired;
		yourself