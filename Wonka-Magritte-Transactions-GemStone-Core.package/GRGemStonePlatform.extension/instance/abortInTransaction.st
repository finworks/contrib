*Wonka-Magritte-Transactions-GemStone-Core
abortInTransaction
	"abort, but make sure to begin another transaction again"
        System abortTransaction.
        System inTransaction
            ifFalse: [ System beginTransaction ]
