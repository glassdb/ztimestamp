private
clockTimezoneOffset
	"Return the timezone offset of the clock that we use as an Integer seconds (cached), In Gemstone, this is 0 since #totalSeconds returns it in UTC ."

	^ ClockTimezoneOffset
		ifNil: [ ClockTimezoneOffset := 0 ]