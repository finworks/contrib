as yet unclassified
renderContentOn: html
	html document
		addLoadScript:
			((html jQuery id: self htmlId)
				on: 'change' selector: '.ajaxUpdateTrigger' do: (self updateAndRenderOn: html);
				yourself).
	html div
		id: self htmlId;
		with: [ self renderNextOn: html ]