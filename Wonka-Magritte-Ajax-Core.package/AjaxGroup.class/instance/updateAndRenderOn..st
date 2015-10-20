processing
updateAndRenderOn: html
	"Replaces self decoratedComponent onscreen with another version using ajax, ensuring any javascript on the new version is attached when loaded."

	| load scheduleAjaxCall |
	load := html jQuery this load
		serializeChildren;
		html: [ :r | 
					self handleAjaxCall.
					self renderNextOn: r ];
		yourself.
	scheduleAjaxCall := html ajaxQueue
		call: 'schedule' with: load asFunction with: (html jQuery id: self htmlId);
		yourself.
	^ scheduleAjaxCall