processing
handleFiltered: aRequestContext
	GRPlatform current commitInTransaction.
	^ [ super handleFiltered: aRequestContext ]
		on: WAResponseNotification
		do: [ :n | 
			GRPlatform current commitInTransaction.
			n pass ]