private
receiveDatagram: bytes
	50 timesRepeat: [ 
		socket read: bytes size into: bytes.
		(bytes at: 1) > 0
			ifTrue: [ ^ self ].
		(Delay forMilliseconds: 5) wait ]