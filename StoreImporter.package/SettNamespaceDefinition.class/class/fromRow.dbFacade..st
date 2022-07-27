instance creation
fromRow: row dbFacade: aDatabaseFacade
	^ self new
		initializeFrom: row dbFacade: aDatabaseFacade;
		yourself