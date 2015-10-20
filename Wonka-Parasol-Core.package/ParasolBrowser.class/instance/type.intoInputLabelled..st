user actions
type: aString intoInputLabelled: label
	| input backSpacesToClearInputWithoutTriggeringOnChange |
	input := self inputLabelled: label.
	"Cannot use clear here: https://code.google.com/p/selenium/issues/detail?id=214"
	backSpacesToClearInputWithoutTriggeringOnChange := ''.
	(input getAttribute: 'value') size timesRepeat: [ backSpacesToClearInputWithoutTriggeringOnChange := backSpacesToClearInputWithoutTriggeringOnChange, (BPKeys backSpace asString) ].
	input sendKeys: backSpacesToClearInputWithoutTriggeringOnChange , aString