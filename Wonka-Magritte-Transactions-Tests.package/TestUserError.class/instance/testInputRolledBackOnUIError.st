sunit
testInputRolledBackOnUIError
	browser
		run: [
			browser
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: true;
				type: 'ABCDEF' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				assert: browser renderedErrors equals: {'Some domain error happened'};
				assert: domainObject anAttribute = nil ]