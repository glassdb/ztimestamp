*ztimestamp
printOn: aStream base: base length: minimum padded: zeroFlag
	^ aStream nextPutAll: (self printPaddedWith: $0 to: minimum base: base)