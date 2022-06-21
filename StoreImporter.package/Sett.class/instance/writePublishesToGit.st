private
writePublishesToGit

	self createRowanDirectoryStructure.
	storePublishes doWithIndex: [ :each :index | 
		each logCommitStartTo: logger number: index.
		[ 
		SettCommitWriter
			writeCommit: each
			toRowanDirectoryStructure: rowanDirectories
			inGitRepository: gitRepository
			loggingTo: logger
			withDestinationConfiguraiton: destinationConfiguration ]
				on: SettDuplicateSelectorError
				do: [ :ex | 
					self rewriteDuplicateMethodDefinitionFrom: ex.
					ex resume ] ].
	logger log: 'Store import complete.'