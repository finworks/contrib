actions
doSomething
	Transcript
		show: 'Doing something, attribute on domain is:' , anAttribute printString;
		cr.
	raiseError
		ifTrue: [ UserError signal: 'Some domain error happened' ]