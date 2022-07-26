converting
decoded

	"#base64Decoded now answers a ByteArray rather than a String."

	blobBytes := blobBytes asString base64Decoded asString.
	^ self fetchContinuationsAndDecode