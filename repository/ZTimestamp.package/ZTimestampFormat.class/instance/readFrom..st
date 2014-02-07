parsing
readFrom: stream
	| offset elements |
	elements := GRSmallDictionary new.
	parser do: [ :each |
		each isCharacter 
			ifTrue: [ self assert: stream next = each ]
			ifFalse: [ elements add: (self perform: each with: stream) ] ].
	^ self createInstanceFrom: elements