hooks
children
	^ children ifNil: [ children := {self childComponent} ].