initialize
initialize
	super initialize.
	validationBlocks := OrderedCollection new
		add: [ :aComponent | aComponent validate ];
		yourself