as yet unclassified
submit
	((parts sumNumbers: [ :part | part percentage ]) = 100)
		ifFalse: [ UserError signal: 'All parts should add up to 100%' ].
	(totalAmount > 0)
		ifFalse: [ UserError signal: 'Please specify an amount greater than 0' ].
	submitted := true