accessing
resultStream

	^ resultStream
		ifNil: [ resultStream := StandardFileStream forceNewFileNamed: self outputFilename ]