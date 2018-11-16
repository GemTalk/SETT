private-run-methods
processDBResults
	| file fileAsString |
	file := FileStream readOnlyFileNamed: self outputFilename.
	fileAsString := file contentsOfEntireFile.
	^ SetOracleProxyResult fromString: fileAsString