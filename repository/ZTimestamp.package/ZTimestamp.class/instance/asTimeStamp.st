converting
asTimeStamp 
	"Convert the receiver to a TimeStamp.
	Note that I am in the UTC/GMT/Zulu timezone and have second precision"

	^ TimeStamp
			year: self year 
			day: self dayOfYear 
			hour: self hour
			minute: self minutes
			second: self seconds
			offset: Duration zero