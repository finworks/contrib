testing
inputWithLabelIsMarkedAsError: label
	^(browser driver findElementsByXPath: (browser inputLabelledXPath: label), '/parent::*[contains(@class, "error")]') size > 0