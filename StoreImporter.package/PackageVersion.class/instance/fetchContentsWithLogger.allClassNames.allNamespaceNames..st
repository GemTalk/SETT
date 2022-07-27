fetching
fetchContentsWithLogger: aSettLogger allClassNames: classNamesSet allNamespaceNames: namespaceNamesSet

	allClassNames := classNamesSet.
	allNamespaceNames := namespaceNamesSet.
	logger := aSettLogger.
	logger debug: 'Fetching contents of ' , self printString.
	self fetchContents