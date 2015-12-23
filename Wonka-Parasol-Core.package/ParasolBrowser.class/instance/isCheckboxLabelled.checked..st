xpath
isCheckboxLabelled: label checked: aBoolean
	| checkbox isChecked |
	checkbox := self checkboxLabelled: label.
	isChecked := (checkbox getAttribute: 'checked') notNil.
	^ isChecked = aBoolean