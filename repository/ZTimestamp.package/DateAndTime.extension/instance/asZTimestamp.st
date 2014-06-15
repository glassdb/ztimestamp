*ztimestamp
asZTimestamp
	^ ZTimestamp new
		jdn: self julianDayNumber 
		secs: self secondsSinceMidnight rounded asInteger - offset