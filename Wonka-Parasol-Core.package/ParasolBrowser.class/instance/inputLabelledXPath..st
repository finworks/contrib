xpath
inputLabelledXPath: label
	^ '//input[@id=',(self labelXPath: label),'/@for]'