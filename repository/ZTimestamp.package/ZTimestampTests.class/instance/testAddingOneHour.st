testing
testAddingOneHour
	| t1 t2 |
	t1 := ZTimestamp year: 2012 month: 8 day: 7 hour: 14 minute: 20 second: 11.
	t2 := ZTimestamp year: 2012 month: 8 day: 7 hour: 15 minute: 20 second: 11.
	self assert: t1 < t2.
	self assert: (t1 + 1 hour) = t2.