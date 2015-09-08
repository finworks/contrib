transactions
commitTransaction
	Transcript show: 'commit'; cr.
	self isPharo 
		ifFalse: [ GRPlatform current commitTransaction ]