reading
commentsForCommit: aStoreCommit
	"Get comments for a package or bundle."

	| pk query |
	pk := aStoreCommit pundleVersion primaryKey.
	query := '
	SELECT 
		commentblob.blobtype,
		commentblob.blobdata,
		blessing.timestamp, 
		blessing.blessinglevel,
		blessing.commentid
	FROM tw_blessing blessing
	INNER JOIN tw_blob commentblob
		ON blessing.commentid = commentblob.primarykey
	WHERE blessing.pkgid = ' , pk printString
		,
			'
		AND blessing.rectype = ''' , aStoreCommit blessingType , '''
		ORDER BY blessing.timestamp DESC'.
	^ self runQuery: query