descriptions
descriptionAnAttribute
	<magritteDescription>
	^ super descriptionAnAttribute 
		beRelatedToUserErrorIf: [ :e| e isKindOf: FakeExceptionForTestingRelatedUserErrors ];
		yourself