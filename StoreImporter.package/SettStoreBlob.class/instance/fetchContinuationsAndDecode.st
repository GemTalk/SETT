fetching -private
fetchContinuationsAndDecode

	blobType negative ifTrue: [ self fetchBlobContinuations ].
	^ self decodeFromFullBytes