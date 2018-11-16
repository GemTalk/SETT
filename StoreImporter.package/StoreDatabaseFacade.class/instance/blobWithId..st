reading
blobWithId: initialBlobId
	| blobId blobType blobBytes |
	blobId := initialBlobId.
	blobBytes := ByteArray new.
	[ | query queryResults row |
	query := 'SELECT 
		blobtype, 
		blobdata
		FROM tw_blob 
		WHERE primarykey = ' , blobId printString.
	queryResults := self runQuery: query.
	queryResults size = 1
		ifFalse: [ self error: 'Expected exactly one blob row.' ].
	row := queryResults first.
	blobType := row first.
	blobBytes := blobBytes , row second.
	blobType < 0 ] whileTrue: [ blobId := blobType negated ].
	^ StoreBlobConverter contentsOfBlob: blobBytes blobType: blobType