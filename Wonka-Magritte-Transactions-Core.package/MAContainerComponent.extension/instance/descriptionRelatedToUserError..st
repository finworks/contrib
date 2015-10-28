*Wonka-Magritte-Transactions-Core
descriptionRelatedToUserError: error
	 | related |
       related := OrderedCollection new.
       self
               withContainersDo: [ :each | related addAll: (each magritteDescription select: [ :aDescription | aDescription isRelatedToUserError: error ]) ].
       ^ related ifNotEmpty: [ related first ] ifEmpty: [ nil ]
