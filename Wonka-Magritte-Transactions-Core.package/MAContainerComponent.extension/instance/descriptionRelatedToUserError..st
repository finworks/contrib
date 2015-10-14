*Wonka-Magritte-Transactions-Core
descriptionRelatedToUserError: error
	^ self description detect: [ :aDescription | aDescription isRelatedToUserError: error ] ifNone: [ nil ]