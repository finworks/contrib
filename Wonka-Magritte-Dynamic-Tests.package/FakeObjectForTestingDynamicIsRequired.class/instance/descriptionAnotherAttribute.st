descriptions
descriptionAnotherAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anotherAttribute;
		beRequiredOnCondition: [ toggle not ];
		label: 'Required when toggle is not true';
		yourself