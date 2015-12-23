ajax
amountsAreShownAs: amountStrings
	| checkAmountsBlock |
	checkAmountsBlock := [ 
	amountStrings
		allSatisfy: [ :amountString | 
			| rowNumber shownText |
			rowNumber := amountStrings indexOf: amountString.
			shownText := (browser cellInTable: '//table[@class="report"]' row: rowNumber column: 2) getText.
			shownText = amountString ] ].
	^checkAmountsBlock 
		on: BPException
		do: [ :ex|
			Delay forSeconds: 1.
			checkAmountsBlock value ]