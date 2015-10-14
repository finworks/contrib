processing
handleAjaxCall
	| containerComponent |
	containerComponent := self decoratedComponent.
	containerComponent validate
		ifTrue: [ 
			containerComponent
				commit;
				rebuild ].
	