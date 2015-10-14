xpath
label: label
	^ driver findElementByXPath: (self labelXPath: label)