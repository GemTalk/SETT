directory creation
ensureGitRepositoryDirectory

	self storeCommitsDo: [ :eachCommit | 
		gitRepositoriesMap
			at: currentPundleName
			ifAbsentPut: [ 
				NestedRowanDirectoryStructure
					createDirectoriesFrom: destinationConfiguration
					parentDirectoryName:
						(self replaceFileDelimiterIn: currentPundleName) ] ]