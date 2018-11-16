instance creation
forRepository: storeRepository topLevelPundlesSince: aDateAndTime
	^ self new
		storeRepository: storeRepository;
		initializeCommitsSince: aDateAndTime;
		yourself