private
findAllStorePublishes

	| storeRepository |
	logger log: 'Finding bundle and package versions'.
	storeRepository := SettStoreRepository
		                   forDatabase: dbFacade
		                   withLogger: logger.
	storeRepository logTotalsTo: logger.
	storePublishes := StoreCommitList
		                  forRepository: storeRepository
		                  matchingPatterns: sourceConfiguration patterns
		                  topLevelPundlesSince: initialDateAndTime
		                  endingAt: endDateAndTime.
	storePublishes logNumberOfCommitsTo: logger