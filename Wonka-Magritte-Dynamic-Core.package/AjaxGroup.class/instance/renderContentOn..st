as yet unclassified
renderContentOn: html
	html document
		addLoadScript:
			((html jQuery id: self htmlIdToRefresh)
				on: 'change' selector: 'input.text' do: (self updateAndRenderOn: html);
				yourself).
	html div
		id: self htmlIdToRefresh;
		with: [ self renderNextOn: html ]