*Wonka-Magritte-Ajax-Core
validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean
	^ (super validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean)
		and: [ 
			(self children
				collect: [ :each | 
					(aBoolean and: [ each shouldBeValidated not ])
						or: [ each validateDynamicallyToErrors: aCollectionOfErrors commitAlso: aBoolean ] ])
				allSatisfy: [ :isValid | isValid ] ]