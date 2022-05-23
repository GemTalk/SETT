converting
decoded
	"#base64Decoded now answers a ByteArray rather than a String."
	blobBytes := blobBytes asString base64Decoded asString.
	blobType negative
		ifTrue: [ self fetchBlobContinuations ].
	^ self decodeFromFullBytes