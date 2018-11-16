instance creation
forDatabase: aDatabaseFacade withLogger: aSettLogger
	^ self new
		logger: aSettLogger;
		initializeForDatabase: aDatabaseFacade;
		yourself