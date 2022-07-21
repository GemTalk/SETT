fetching
fetchContentsWithLogger: aSettLogger allClassNames: aSet

	allClassNames:= aSet.
	logger := aSettLogger.
	logger debug: 'Fetching contents of ', self printString.
	self fetchContents