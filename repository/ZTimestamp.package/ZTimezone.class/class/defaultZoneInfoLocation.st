acccessing
defaultZoneInfoLocation
	"On Mac OS X and Linux/Unix there is a standard location.
	On Windows there is not, so the location has to be specified using #zoneInfoLocation:"

	| standardLocation |
	standardLocation := ServerFileDirectory on: '/usr/share/zoneinfo/'.
	^ standardLocation exists
		ifTrue: [ standardLocation ]
		ifFalse: [ self errorCannotUseDefaultZoneInfoLocation ]