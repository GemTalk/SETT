private
fetchCommitComment
	"See DatabaseFacade >> commentsForCommit: for row ordering."

	"SELECT 
		commentblob.blobtype,
		commentblob.blobdata,
		blessing.timestamp, 
		blessing.blessinglevel,
		blessing.commentid"

	comment := (databaseFacade commentsForCommit: self)
		           asOrderedCollection
						collect: [ :row | StoreComment fromRow: row dbFacade: databaseFacade ]