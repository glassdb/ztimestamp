instance creation
fromFile: file
	"Parse the binary compiled tzfile at file and return a timezone. Do not cache."
	"self fromFile: '/usr/share/zoneinfo/Europe/Brussels'."

	^ self fromStream: (RWBinaryOrTextStream on: file contents) binary.