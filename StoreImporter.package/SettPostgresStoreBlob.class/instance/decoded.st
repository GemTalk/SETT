converting
decoded
	blobBytes := blobBytes asString base64Decoded.
	blobType negative
		ifTrue: [ self fetchBlobContinuations ].
	^ self decodeFromFullBytes