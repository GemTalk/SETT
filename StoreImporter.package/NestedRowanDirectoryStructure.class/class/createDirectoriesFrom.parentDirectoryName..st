directory creation
createDirectoriesFrom: aDestinationConfiguration parentDirectoryName: aString

	^ (self
		   destinationConfiguration: aDestinationConfiguration
		   parentDirectoryName: aString)
				createDirectories