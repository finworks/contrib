descriptions
descriptionAnAttribute
	<magritteDescription>
	^ MAStringDescription new
		selectorAccessor: #anAttribute;
		label: 'A string more than one chars';
		beRequired;
		addCondition: [ :i | i size > 1 ] labelled: 'The string should be longer than one character';
		yourself