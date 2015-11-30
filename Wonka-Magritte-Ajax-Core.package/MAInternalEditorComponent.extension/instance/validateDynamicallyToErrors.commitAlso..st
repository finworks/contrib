*Wonka-Magritte-Ajax-Core
validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean
	^ ((aBoolean and: [ component shouldBeValidated not ])
		or: [ component validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean ])
		and: [ super validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean ]