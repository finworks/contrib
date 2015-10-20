descriptions
descriptionSubmitted
	<magritteDescription >
	^ MABooleanDescription new 
		selectorAccessor: #submitted;
		priority: 1;
		beVisibleOnCondition: [ self submitted ];
		beReadonlyOnCondition: [ self submitted not ];
		label: 'Submitted';
		yourself