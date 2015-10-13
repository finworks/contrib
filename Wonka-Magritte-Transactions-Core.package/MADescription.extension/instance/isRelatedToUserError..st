*Wonka-Magritte-Transactions-Core
isRelatedToUserError: aUserError
	^self userErrorConditions anySatisfy: [ :conditionBlock| conditionBlock value: aUserError ]