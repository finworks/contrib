as yet unclassified
totalAmount: anAmount
	totalAmount := anAmount.
	parts do: [  :part| part totalAmount: anAmount ]
	
	