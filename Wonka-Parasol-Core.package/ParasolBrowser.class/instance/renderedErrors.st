xpath
renderedErrors
	^ (driver findElementsByXPath: '//ul[@class="errors"]/li') collect: [ :e | e getText ].
