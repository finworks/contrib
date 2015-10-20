descriptions
descriptionTotalAmount
	<magritteDescription>
	^ MANumberDescription new
		selectorAccessor: #totalAmount;
		label: 'Total amount';
		priority: 2;
		beRequired;
		beAjaxUpdateTrigger;
		yourself