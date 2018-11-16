private
findAllStorePublishes
	| storeRepository |
	logger log: 'Finding bundle and package versions'.
	storeRepository := SettStoreRepository forDatabase: databaseFacade withLogger: logger.
	storeRepository logTotalsTo: logger.
	storePublishes := StoreCommitList
		forRepository: storeRepository
		topLevelPundlesSince: initialDateAndTime
		endingAt: endDateAndTime.
	storePublishes logNumberOfCommitsTo: logger