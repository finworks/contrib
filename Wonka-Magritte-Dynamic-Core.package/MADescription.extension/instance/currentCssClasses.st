*Wonka-Magritte-Dynamic-Core
currentCssClasses
	| classes |
	classes := OrderedCollection withAll: self cssClasses.
	self isReadonly
		ifTrue: [ classes add: 'readonly' ].
	self isRequired
		ifTrue: [ classes add: 'required' ].
	self isAjaxUpdateTrigger 
		ifTrue: [ classes add: 'ajaxUpdateTrigger' ].
	^classes