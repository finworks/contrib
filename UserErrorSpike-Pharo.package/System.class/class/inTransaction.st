transactions
inTransaction
      | inTransaction |
	inTransaction := self isPharo 
		ifTrue: [ true ]
		ifFalse: [ System inTransaction ].
	Transcript show: 'inTransaction: ', inTransaction printString; cr.
	^ inTransaction