processing
handleAjaxCall
	| containerComponent |
	containerComponent := self decoratedComponent.
	containerComponent commitValidatedInput.
	"containerComponent errors isEmpty
		ifTrue: [ 
			containerComponent
				rebuild ].
	"