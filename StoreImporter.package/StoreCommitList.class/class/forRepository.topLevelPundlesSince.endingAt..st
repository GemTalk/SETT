instance creation
forRepository: storeRepository topLevelPundlesSince: aStartDateAndTime endingAt: anEndDateAndTime
	^ self new
		storeRepository: storeRepository;
		initializeCommitsBetweenStartTime: aStartDateAndTime endingAt: anEndDateAndTime;
		yourself