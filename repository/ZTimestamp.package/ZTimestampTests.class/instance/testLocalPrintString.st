testing
testLocalPrintString
	| now timestamp reference |
	now := DateAndTime now.
	timestamp := now asUTC asZTimestamp localPrintString.
	reference := now rounded printString.
	self assert: timestamp equals: reference