initialize
initialize
	super initialize.
	afterRequestCommitBlock := [ GRPlatform current commitInTransaction ]