processing
handleFiltered: aRequestContext
	GRPlatform current commitInTransaction
		ifFalse: [ WARetryHttpRequest signal: 'Could not commit pre-request state, retrying request' ].
	^ [ super handleFiltered: aRequestContext ]
		on: WAResponseNotification
		do: [ :n | 
			self doPostRequestCommit.
			n pass ]