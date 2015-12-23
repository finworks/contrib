xpath
ensureCheckboxLabelled: label isChecked: aBoolean
	(self isCheckboxLabelled: label checked: aBoolean)
		ifFalse: [ (self checkboxLabelled: label) click ]