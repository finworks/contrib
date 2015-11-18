xpath
inputLabelled: label hasValue: aString
	^((self inputLabelled: label) getAttribute: 'value') = aString