*Wonka-Magritte-Transactions-GemStone-Core
commitInTransaction
        "commit, but make sure to begin another transaction again"
        System commitTransaction.
        System inTransaction
              ifFalse: [ System beginTransaction ]
