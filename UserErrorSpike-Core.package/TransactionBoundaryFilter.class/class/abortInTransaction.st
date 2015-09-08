processing
abortInTransaction
	System abortTransaction.
	System inTransaction
		ifFalse: [ System beginTransaction ]