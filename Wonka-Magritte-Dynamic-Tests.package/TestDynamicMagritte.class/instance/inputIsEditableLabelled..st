sunit
inputIsEditableLabelled: label
	^ (browser label: label) isDisplayed
		and: [ browser inputIsPresentLabelled: label ]