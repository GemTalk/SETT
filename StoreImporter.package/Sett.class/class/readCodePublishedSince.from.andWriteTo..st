public
readCodePublishedSince: aDateAndTime from: aSourceConfiguration andWriteTo: aDestinationConfiguration
	"This is a main entry point for SETT.
	aSourceConfiguration is typically an instance of a subclass of SettSourceConfiguration,
	and aDestinationConfiguration an instance of a subclass of SettDestinationConfiguration."

	self
		readCodePublishedBetweenStartDateAndTime: aDateAndTime 
		andEndDateAndTime: (DateAndTime tomorrow)
		from: aSourceConfiguration
		andWriteTo: aDestinationConfiguration
	