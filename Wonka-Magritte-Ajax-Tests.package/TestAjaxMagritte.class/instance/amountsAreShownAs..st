ajax
amountsAreShownAs: amounts
	^amounts allSatisfy: [ :amount| | rowNumber shownText |
		rowNumber := amounts indexOf: amount.
		shownText := (browser cellInTable: '//table[@class="report"]' row: rowNumber column: 2) getText.
		shownText = amount printString.
	]