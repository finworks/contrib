xpath
checkboxLabelled: label
	^ driver findElementByXPath:  '//label[contains(.,"',label,'")]/input[@type="checkbox"]'