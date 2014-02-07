converting
asDateAndTime 
	"Convert the receiver to a DateAndTime.
	Note that I am in the UTC/GMT/Zulu timezone and have second precision"
	^ DateAndTime
			year: self year 
			day: self dayOfYear 
			hour: self hour
			minute: self minutes
			second: self seconds
			offset: Duration zero