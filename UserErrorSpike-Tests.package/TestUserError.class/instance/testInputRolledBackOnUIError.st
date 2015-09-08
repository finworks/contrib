sunit
testInputRolledBackOnUIError
	| domainObject checkbox |
	domainObject := self componentUnderTest domainObject.
	self ensureCheckbox: 'Let doSomething raise a UserErrror' isChecked: true.
	(self inputLabelled: 'A string more than one chars:') sendKeys: 'ABCDEF'.
	(self buttonLabelled: 'Something') click.
	self assert: (self renderedErrorsMatch: {'Some domain error happened'}).
	self assert: domainObject anAttribute = nil