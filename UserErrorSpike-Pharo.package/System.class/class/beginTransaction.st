transactions
beginTransaction
	Transcript show: 'begin'; cr.
	self isPharo 
		ifFalse: [ GRPlatform current doBeginTransaction ]