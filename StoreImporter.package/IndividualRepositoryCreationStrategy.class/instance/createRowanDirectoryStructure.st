directory creation
createRowanDirectoryStructure

	self storeCommitsDo: [ :eachCommit | 
		rowanDirectoriesMap
			at: currentPundleName
			ifAbsentPut: [ 
				NestedRowanDirectoryStructure
					createDirectoriesFrom: destinationConfiguration
					parentDirectoryName:
						(self replaceFileDelimiterIn: currentPundleName) ] ]