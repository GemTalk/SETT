private
writePublishesToGit

	self initializeRepositoryCreationStrategy.

	repositoryCreationStrategy storeCommitsDo: [ :eachCommit :index | 
		eachCommit logCommitStartTo: logger number: index.
		[ SettCommitWriter
				writeCommit: eachCommit
				usingCreationStrategy: repositoryCreationStrategy
				loggingTo: logger ]
			on: SettDuplicateSelectorError
			do: [ :ex | 
				self rewriteDuplicateMethodDefinitionFrom: ex.
				ex resume ] ].
	logger log: 'Store import complete.'