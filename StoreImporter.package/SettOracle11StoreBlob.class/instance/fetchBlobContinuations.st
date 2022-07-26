fetching -private
fetchBlobContinuations
	[ | row |
	row := dbFacade rawBlobWithId: blobType negated.
	blobType := row first.
	blobBytes := blobBytes , row second.
	blobType negative ] whileTrue