instance creation
storeCommit: aStoreCommit usingCreationStrategy: aRepositoryCreationStrategy loggingTo: aSettLoger

	^ self new
		  initializeWithStoreCommit: aStoreCommit
		  repositoryCreationStrategy: aRepositoryCreationStrategy
		  logger: aSettLoger;
		  yourself