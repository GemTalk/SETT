public
readCodePublishedSince: aDateAndTime from: aSourceConfiguration andWriteTo: aDestinationConfiguration
	"This is a main entry point for SETT.
	aSourceConfiguration is typically an instance of a subclass of SettSourceConfiguration,
	and aDestinationConfiguration an instance of a subclass of SettDestinationConfiguration."

	| worker |
	worker := self new.
	worker
		withInitialDateAndTime: aDateAndTime;
		initializeForSourceConfiguration: aSourceConfiguration;
		initializeForDestinationConfiguration: aDestinationConfiguration;
		findAllStorePublishes;
		writePublishesToGit