descriptions
descriptionTotalAmount
	<magritteDescription>
	^ MANumberDescription new
		selectorAccessor: #totalAmount;
		label: 'Total amount';
		beAjaxUpdateTrigger;
		yourself