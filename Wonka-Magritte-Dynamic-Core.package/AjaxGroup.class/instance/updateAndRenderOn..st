as yet unclassified
updateAndRenderOn: html
	"Replaces self decoratedComponent onscreen with another version using ajax, ensuring any javascript on the new version is attached when loaded."

	| load scheduleAjaxCall |
	load := html jQuery this load
		selector: '#' , self htmlId , ' > *';
		serializeChildren;
		html: [ :r | 
					self handleAjaxCall.
					r render: self decoratedComponent ];
		yourself.
	scheduleAjaxCall := html ajaxQueue
		call: 'schedule' with: load asFunction with: (html jQuery id: self htmlId);
		yourself.
	^ scheduleAjaxCall