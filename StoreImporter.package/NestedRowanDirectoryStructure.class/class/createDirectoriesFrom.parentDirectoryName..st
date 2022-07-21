instance creation
createDirectoriesFrom: aDestinationConfiguration parentDirectoryName: aString

	^ self new
		initializeFromDestinationConfiguration: aDestinationConfiguration
			parentDirectoryName: aString;
		yourself