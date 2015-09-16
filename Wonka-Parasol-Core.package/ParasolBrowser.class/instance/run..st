control
run: aBlock
	self start.
	[ aBlock value: self ]
		ensure: [ self stop ]