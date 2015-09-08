sunit
testInputDoesNotReachDomainIfValidationFails
	| domainObject  |
	domainObject := self componentUnderTest domainObject.
	self assert: domainObject anAttribute == nil.
	self ensureCheckbox: 'Let doSomething raise a UserErrror' isChecked: false.
	(self inputLabelled: 'A string more than one chars:') sendKeys: 'a'.
	(self buttonLabelled: 'Something') click.
	self assert: (self renderedErrorsMatch: {'A string more than one chars: The string should be longer than one character'}).
	self assert: domainObject anAttribute == nil