processing
handleAjaxCall
	| containerComponent |
	containerComponent := self decoratedComponent.
	containerComponent commitValidatedInput.
	containerComponent rebuildValidParts.
	containerComponent validate