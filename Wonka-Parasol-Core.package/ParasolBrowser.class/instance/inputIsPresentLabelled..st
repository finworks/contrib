xpath
inputIsPresentLabelled: label
	^ (driver findElementsByXPath: (self inputLabelledXPath: label)) size > 0