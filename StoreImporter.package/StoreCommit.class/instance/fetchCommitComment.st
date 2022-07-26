private
fetchCommitComment
	"See DatabaseFacade >> commentsForCommit: for row ordering."

	"SELECT 
		commentblob.blobtype,
		commentblob.blobdata,
		blessing.timestamp, 
		blessing.blessinglevel,
		blessing.commentid"

	comment := (dbFacade commentsForCommit: self)
		           asOrderedCollection
						collect: [ :row | StoreComment fromRow: row dbFacade: dbFacade ]