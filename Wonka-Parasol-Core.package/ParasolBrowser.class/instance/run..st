control
run: aBlock
	self start.
	[ aBlock value ]
		ensure: [ self stop ]