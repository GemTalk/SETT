initialization
initializeForDestinationConfiguration: aDestinationConfiguration

	destinationConfiguration := aDestinationConfiguration.
	destinationConfiguration repositoryBeginDate: initialDateAndTime.
	destinationConfiguration debugLogging ifTrue: [ logger beDebugging ]