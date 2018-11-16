instance creation
fromDbQuery: queryResults withLogger: aSettLogger
	"This s"

	^ self new
		initializeFromRow: queryResults;
		logger: aSettLogger;
		yourself