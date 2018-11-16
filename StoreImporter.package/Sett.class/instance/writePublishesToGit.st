private
writePublishesToGit
	self createRowanDirectoryStructure.
	storePublishes
		do: [ :each | 
			each logCommitStartTo: logger.
			SettCommitWriter
				writeCommit: each
				toRowanDirectoryStructure: rowanDirectories
				inGitRepository: gitRepository
				loggingTo: logger
				withDestinationConfiguraiton: destinationConfiguration ].
	logger log: 'Store import complete.'