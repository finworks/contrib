descriptions
descriptionAnotherAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anotherAttribute;
		beVisibleOnCondition: [ toggle not ];
		label: 'Visible when toggle is not true';
		yourself