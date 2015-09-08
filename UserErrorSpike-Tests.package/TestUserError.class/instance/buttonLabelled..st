xpath
buttonLabelled: label
	^ driver findElementByXPath: '//input[@type="submit" and @value="' , label , '"]'