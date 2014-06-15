testing
testWithNowDo
	(Time respondsTo: #microsecondClockValue)
		ifTrue:[
	ZTimestamp withNowDo: [ :timestamp :microseconds |
		self assertInvariants: timestamp.
		self assert: (microseconds between: 0 and: 1e6 - 1) ]]