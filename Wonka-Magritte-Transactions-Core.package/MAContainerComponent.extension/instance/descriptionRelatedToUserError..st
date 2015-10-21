*Wonka-Magritte-Transactions-Core
descriptionRelatedToUserError: error
	^ self magritteDescription detect: [ :aDescription | aDescription isRelatedToUserError: error ] ifNone: [ nil ]