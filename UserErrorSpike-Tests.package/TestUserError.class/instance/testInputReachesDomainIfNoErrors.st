sunit
testInputReachesDomainIfNoErrors
	| domainObject |
	domainObject := self componentUnderTest domainObject.
	self assert: domainObject anAttribute == nil.
	self ensureCheckbox: 'Let doSomething raise a UserErrror' isChecked: false.
	(self inputLabelled: 'A string more than one chars:') sendKeys: 'abcd'.
	(self buttonLabelled: 'Something') click.
	self deny: self thereAreErrors.
	self assert: domainObject anAttribute = 'abcd'.