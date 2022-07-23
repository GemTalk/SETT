instance creation
destinationConfiguration: aDestinationConfiguration parentDirectoryName: aString

	^ self new
		  initializeFromDestinationConfiguration: aDestinationConfiguration
		  parentDirectoryName: aString;
		  yourself