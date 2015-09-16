xpath
buttonLabelled: label
	^ driver findElementByXPath: (self buttonLabelledXPath: label)