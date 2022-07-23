instance creation
forConfiguration: aDestinationConfiguration withLogger: aLogger

	^ self new
		initializeWithConfiguration: aDestinationConfiguration
			andLogger: aLogger;
		yourself