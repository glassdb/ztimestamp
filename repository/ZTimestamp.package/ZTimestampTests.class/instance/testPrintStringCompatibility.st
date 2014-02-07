testing
testPrintStringCompatibility
	| dateTime timestamp |
	dateTime := DateAndTime now rounded printString.
	timestamp := (ZTimestamp fromString: dateTime) localPrintString.
	self assert: dateTime equals: timestamp