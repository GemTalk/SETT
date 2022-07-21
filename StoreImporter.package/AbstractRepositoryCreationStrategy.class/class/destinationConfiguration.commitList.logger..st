initializing
destinationConfiguration: aSettDestinationConfiguration commitList: aStoreCommitList logger: aLogger

	^ self new
		  initializeDestinationConfiguration: aSettDestinationConfiguration
		  commitList: aStoreCommitList
		  logger: aLogger;
		  yourself