descriptions
descriptionAnotherAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anotherAttribute;
		beReadonlyOnCondition: [ toggle not ];
		label: 'Readonly when toggle is not true';
		yourself