directory creation
initializeDestinationConfiguration: aSettDestinationConfiguration commitList: aStoreCommitList logger: aLogger

	rowanDirectoriesMap := Dictionary new.
	gitRepositoriesMap := Dictionary new.
	super
		initializeDestinationConfiguration: aSettDestinationConfiguration
		commitList: aStoreCommitList
		logger: aLogger