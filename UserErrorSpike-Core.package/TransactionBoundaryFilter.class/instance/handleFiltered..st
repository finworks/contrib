processing
handleFiltered: aRequestContext
	self class commitInTransaction.
	^ [ super handleFiltered: aRequestContext ]
		on: WAResponseNotification
		do: [ :n | 
			self class commitInTransaction.
			n pass ]