converting
decoded
	blobType negative
		ifTrue: [ self fetchBlobContinuations ].
	^ self decodeFromFullBytes