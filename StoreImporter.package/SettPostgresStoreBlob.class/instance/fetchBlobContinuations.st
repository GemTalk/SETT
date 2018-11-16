private
fetchBlobContinuations
	[ | row |
	row := dbFacade rawBlobWithId: blobType negated.
	blobType := row first.
	blobBytes := blobBytes , row second asString base64Decoded.
	blobType negative ] whileTrue