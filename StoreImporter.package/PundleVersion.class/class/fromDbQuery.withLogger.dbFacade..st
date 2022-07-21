instance creation
fromDbQuery: queryResults withLogger: aSettLogger dbFacade: aDatabaseFacade
	"This s"

	^ self new
		initializeFromRow: queryResults;
		dbFacade: aDatabaseFacade;
		logger: aSettLogger;
		yourself