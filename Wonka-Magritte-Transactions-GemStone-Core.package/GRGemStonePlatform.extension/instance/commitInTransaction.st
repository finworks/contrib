*Wonka-Magritte-Transactions-GemStone-Core
commitInTransaction
        "commit, but make sure to begin another transaction again"
        ^System commitTransaction 
          ifTrue: [
             System inTransaction
                 ifFalse: [ System beginTransaction ]
             true ]
          ifFalse: [ false ]
