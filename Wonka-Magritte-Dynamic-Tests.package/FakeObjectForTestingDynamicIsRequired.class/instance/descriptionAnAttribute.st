descriptions
descriptionAnAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anAttribute;
		beRequiredOnCondition: [ toggle ];
		label: 'Required when toggle is true';
		yourself