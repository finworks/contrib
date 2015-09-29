as yet unclassified
descriptionSubmitted
	<magritteDescription >
	^ MABooleanDescription new 
		selectorAccessor: #submitted;
		beVisibleOnCondition: [ self submitted ];
		beReadonlyOnCondition: [ self submitted not ];
		label: 'Submitted';
		yourself