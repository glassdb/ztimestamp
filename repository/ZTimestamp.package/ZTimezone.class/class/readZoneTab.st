utilties
readZoneTab
	"Parse and load the zone tab file, do not cache"
	"self readZoneTab"

	| contents |
	contents := self zoneInfoLocation readOnlyFileNamed: 'zone.tab' do:[:in | in upToEnd].
	^ (contents lines reject: [ :line | line first = $# ])
			collect: [ :lines | 
				| tokens |
				tokens := lines findTokens: Character separators.
				{ tokens third asSymbol. tokens first } ]