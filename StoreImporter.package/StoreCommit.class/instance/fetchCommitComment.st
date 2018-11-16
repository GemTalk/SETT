private
fetchCommitComment
	| comments |
	comments := OrderedCollection new.
	(databaseFacade commentsForCommit: self)
		do: [ :row | comments add: (StoreComment fromRow: row dbFacade: databaseFacade) ].
	comment := comments