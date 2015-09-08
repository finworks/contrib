xpath
renderedErrorsMatch: expectedErrors
	| renderedErrors |
	renderedErrors := (driver findElementsByXPath: '//ul[@class="errors"]/li') collect: [ :e | e getText ].
	^ renderedErrors = expectedErrors