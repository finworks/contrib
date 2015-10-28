xpath
ensureCheckboxLabelled: label isChecked: aBoolean
	| checkbox isChecked |
	checkbox := (self checkboxLabelled: label).
	isChecked := (checkbox getAttribute: 'checked') notNil.
	isChecked = aBoolean ifFalse: [ checkbox click ].