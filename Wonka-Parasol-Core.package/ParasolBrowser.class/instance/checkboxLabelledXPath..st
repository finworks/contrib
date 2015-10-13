xpath
checkboxLabelledXPath: label
	^ (self labelXPath: label) , '/input[@type="checkbox"]'