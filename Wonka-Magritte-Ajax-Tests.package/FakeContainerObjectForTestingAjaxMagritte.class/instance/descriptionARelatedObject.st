descriptions
descriptionARelatedObject
	<magritteDescription>
	^ MAToOneRelationDescription new
		selectorAccessor: #relatedObject;
		componentClass: MAInternalEditorComponent;
		classes: (Array with: FakeRelatedObjectForTestingAjaxMagritte);
		beVisibleOnCondition:  [ showRelatedObject ];
		priority: 2;
		beRequired;
		yourself