instance creation
fromRow: row dbFacade: dbFacade
	^ self new
		initializeFrom: row dbFacade: dbFacade;
		yourself