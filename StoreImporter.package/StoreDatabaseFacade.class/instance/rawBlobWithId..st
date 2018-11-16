reading
rawBlobWithId: blobId
	| query rows |
	query := 'SELECT 
		blobtype, 
		blobdata
		FROM tw_blob 
		WHERE primarykey = ' , blobId printString.
	rows := self runQuery: query.
	rows size = 1
		ifFalse: [ self error: 'Expected exactly one blob row.' ].
	^ rows first