accessing
resetResultStream
	^ resultStream := StandardFileStream forceNewFileNamed: self outputFilename 
