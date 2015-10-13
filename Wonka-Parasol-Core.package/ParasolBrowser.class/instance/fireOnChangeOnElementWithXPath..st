ajax
fireOnChangeOnElementWithXPath: xPath
	self driver
		executeScript:
			'jQuery(document.evaluate(''' , xPath
				, ''', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue).change()'
		with: #()