accessing
anAttribute: aValue
	Transcript
		show: 'Setting anAttribute, to: ' , aValue asString , ' currently: ' , anAttribute asString;
		cr.
	anAttribute := aValue.	"So that we can see it was rolled back after the UserError is signalled"
	raiseError
		ifTrue: [ self raiseAnError ]