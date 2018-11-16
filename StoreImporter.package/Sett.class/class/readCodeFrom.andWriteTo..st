public
readCodeFrom: aSourceConfiguration andWriteTo: aDestinationConfiguration
	"This is a main entry point for SETT.
	aSourceConfiguration is typically an instance of a subclass of SettSourceConfiguration,
	and aDestinationConfiguration an instance of a subclass of SettDestinationConfiguration."

	self
		readCodePublishedSince: (DateAndTime fromString: 'Jan 1 1901')
		from: aSourceConfiguration
		andWriteTo: aDestinationConfiguration