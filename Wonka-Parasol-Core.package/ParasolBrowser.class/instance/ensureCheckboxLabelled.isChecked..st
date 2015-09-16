xpath
ensureCheckboxLabelled: label isChecked: aBoolean
	| checkbox isChecked |
	checkbox := (self checkboxLabelled: 'Let doSomething raise a UserErrror').
	isChecked := (checkbox getAttribute: 'checked') notNil.
	isChecked = aBoolean ifFalse: [ checkbox click ].