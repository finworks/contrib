descriptions
descriptionAmount
	<magritteDescription >
	^ MANumberDescription new 
		selectorAccessor: #amount;
		beReadonly;
		label: 'Amount';
		priority: 2;
		yourself