dynamic description booleans
inputIsEditableLabelled: label
	^ (browser label: label) isDisplayed
		and: [ browser inputIsPresentLabelled: label ]