xpath
checkboxLabelled: label
	^ driver findElementByXPath: (self checkboxLabelledXPath: label)