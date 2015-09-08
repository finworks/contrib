xpath
inputLabelled: label
	^ driver findElementByXPath: '//input[@id=//label[normalize-space(node())=normalize-space("' , label , '")]/@for]'