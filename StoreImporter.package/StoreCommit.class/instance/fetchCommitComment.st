private
fetchCommitComment

	comment := (databaseFacade commentsForCommit: self)
		           asOrderedCollection
						collect: [ :row | StoreComment fromRow: row dbFacade: databaseFacade ]