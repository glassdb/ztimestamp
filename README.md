

# ZTimestamp

I am ZTimestamp.


I am a Magnitude.


I represent a point in time, a combination of a date and a time.


I am an alternative for DateAndTime and TimeStamp.  
I have second precision and live in the UTC/GMT/Zulu timezone.  
I use ISO/International conventions and protocols only.   
I support some essential arithmetic.  

I have an efficient internal representation:

	jnd - the julian day number <SmallInteger>
	secs - the number of seconds since midnight, the beginning of the day <SmallInteger>

Examples:

	ZTimestamp now.
	ZTimestamp fromString: '1969-07-20T20:17:40Z'.

There is some compatibility with existing, standard Chronology objects.
I correctly parse representations with a timezone designator
and can print a representation in arbitrary timezones. 

	(ZTimestamp fromString: DateAndTime now truncated printString) localPrintString.

## Installation

The master branch of this fork mirrors the original repository with Travis tests enabled.
The gemstone branch is tested against Gemstone2.4, Gemstone3.1, Gemstone3.2

This is a [Pharo Smalltalk](http://wwww.pharo.st) project 
using [Monticello Filetree](https://github.com/dalehenrich/filetree).

## Build status


 - [![gemstone branch:](https://travis-ci.org/glassdb/ztimestamp.png?branch=gemstone)](https://travis-ci.org/glassdb/ztimestamp) gemstone branch
 - [![master branch (pharo):](https://travis-ci.org/glassdb/ztimestamp.png?branch=master)](https://travis-ci.org/glassdb/ztimestamp)  master branch (pharo)
 - 


Sven Van Caekenberghe, April, 2012. MIT Licensed.
