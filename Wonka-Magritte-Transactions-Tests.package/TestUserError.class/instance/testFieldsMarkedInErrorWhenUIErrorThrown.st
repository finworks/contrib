sunit
testFieldsMarkedInErrorWhenUIErrorThrown
	browser
		run: [
			browser
				ensureCheckboxLabelled: 'Let doSomething raise a UserErrror' isChecked: true;
				type: 'ABCDEF' intoInputLabelled: 'A string more than one chars:';
				clickOnButtonLabelled: 'Something';
				assert: (self inputWithLabelIsMarkedAsError: 'A string more than one chars:') ]