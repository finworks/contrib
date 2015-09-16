descriptions
descriptionAnAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anAttribute;
		beVisibleOnCondition: [ toggle ];
		label: 'Visible when toggle is true';
		yourself