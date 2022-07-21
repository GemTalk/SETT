accessing
repositoryCreationStrategyForCommitList: aStoreCommitList logger: aLogger

	| class |
	class := self separateGitRepos
		         ifTrue: [ IndividualRepositoryCreationStrategy ]
		         ifFalse: [ AllInOneRepositoryCreationStrategy ].
	^ class
		  destinationConfiguration: self
		  commitList: aStoreCommitList
		  logger: aLogger