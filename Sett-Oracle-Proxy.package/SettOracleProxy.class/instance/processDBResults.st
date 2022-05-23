private-run-methods
processDBResults
	| file fileAsString |
	file := OldFileStream readOnlyFileNamed: self outputFilename.
	fileAsString := file contentsOfEntireFile.
	^ SetOracleProxyResult fromString: fileAsString