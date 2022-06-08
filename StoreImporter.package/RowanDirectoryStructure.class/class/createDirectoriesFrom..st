instance creation
createDirectoriesFrom: aDestinationConfiguration
	^ self new
		initializeFromDestinationConfiguration: aDestinationConfiguration;
		yourself