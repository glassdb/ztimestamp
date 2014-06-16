instance creation
id: id
	"Return the timezone identified by id, either from cache or loading it if necessary"
	|idSymbol|
	idSymbol := id asSymbol.
	idSymbol = #GMT ifTrue: [ ^ self gmt ].
	^ self timezones
		at:idSymbol
		ifAbsentPut: [ self readTimezoneWithId: idSymbol ]