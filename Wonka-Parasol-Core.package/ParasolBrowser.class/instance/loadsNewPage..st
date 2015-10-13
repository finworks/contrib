ajax
loadsNewPage: aBlock
	self driver
		executeScript:	'jQuery("html").addClass("page_load_flag")'
		with: #().
	aBlock value.
	^((self driver findElementByTagName: 'html') getAttribute: 'class') ~= 'page_load_flag'


