public
writeCommit: aStoreCommit usingCreationStrategy: aRepositoryCreationStrategy loggingTo: aSettLoger

	(self
		storeCommit: aStoreCommit
		usingCreationStrategy: aRepositoryCreationStrategy
		loggingTo: aSettLoger)
			writeAndCommit