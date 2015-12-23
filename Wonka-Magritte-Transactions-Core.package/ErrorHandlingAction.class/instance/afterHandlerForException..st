evaluating
afterHandlerForException: anException
	^ (afterExceptionHandlers keys detect: [ :key | anException isKindOf: key ] ifNone: [ nil ])
		ifNotNilDo: [ :handledClass | afterExceptionHandlers at: handledClass ]
		ifNil: [ [ :c |  ] ]