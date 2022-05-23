accessing
resetResultStream
	^ resultStream := OldStandardFileStream forceNewFileNamed: self outputFilename 
