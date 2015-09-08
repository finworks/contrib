transactions
abortTransaction
	Transcript show: 'abort'; cr.
	self isPharo 
		ifFalse: [ GRPlatform current doAbortTransaction ]