descriptions
descriptionAnAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anAttribute;
		beReadonlyOnCondition: [ toggle ];
		label: 'Readonly when toggle is true';
		yourself