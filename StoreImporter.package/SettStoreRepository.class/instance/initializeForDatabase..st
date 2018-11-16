initialization
initializeForDatabase: aDatabaseFacade
	dbFacade := aDatabaseFacade.
	self
		fetchPundleVersions;
		initializeContainment;
		initializeBundleContents