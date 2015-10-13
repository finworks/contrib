xpath
cellInTable: tableXPath row: rowNumber column: columnNumber
	^ driver findElementByXPath: (self cellXPathInTable: tableXPath row: rowNumber column: columnNumber )