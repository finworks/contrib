as yet unclassified
updateAndRenderOn: html
	"Replaces self decoratedComponent onscreen with another version using ajax, ensuring any javascript on the new version is attached when loaded."

	| load wrap scheduleAjaxCall |
	wrap := html jQuery new wrap: [ :r | r div ].
	load := html jQuery new parent load
		serializeChildren;
		html: [ :r | 
					self handleAjaxCall.
					r render: self decoratedComponent];
		onComplete: html jQuery new unwrap;
		yourself.
	scheduleAjaxCall := ((html jQuery expression: 'body') call: 'data' with: 'ajaxqueue')
		call: 'schedule' with: (wrap , load) asFunction with: (html jQuery id: self htmlIdToRefresh);
		yourself.
	^ scheduleAjaxCall