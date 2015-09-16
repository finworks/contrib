xpath
inputLabelledXPath: label
	^ '//input[@id=//label[normalize-space(node())=normalize-space("' , label , '")]/@for]'