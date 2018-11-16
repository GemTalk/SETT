fetching
addCommitForPundleVersion: aPundleVersion
	| commit |
	commit := StoreCommit for: aPundleVersion.
	commit databaseFacade: store.
	commits add: commit
