instance creation
forRepository: storeRepository matchingPatterns: someMatchPatterns topLevelPundlesSince: aStartDateAndTime endingAt: anEndDateAndTime
	^ self new
		storeRepository: storeRepository;
		matchingPatterns: someMatchPatterns;
		initializeCommitsBetweenStartTime: aStartDateAndTime endingAt: anEndDateAndTime;
		yourself