xpath
inputLabelled: label
	^ driver findElementByXPath: (self inputLabelledXPath: label)