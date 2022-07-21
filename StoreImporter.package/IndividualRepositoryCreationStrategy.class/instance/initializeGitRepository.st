directory creation
initializeGitRepository

	self storeCommitsDo: [ :eachCommit | 
		self ensureGitRepositoryDirectory.
		gitRepositoriesMap
			at: currentPundleName
			ifAbsentPut: [ 
				| nestedPath customDestConfig |
				nestedPath := destinationConfiguration repositoryPathString
					, '/' , (self replaceFileDelimiterIn: currentPundleName).
				customDestConfig := destinationConfiguration copy
					repositoryPathString: nestedPath;
					yourself.
			SettGitRepository
				forConfiguration: customDestConfig
				withLogger: logger ] ]