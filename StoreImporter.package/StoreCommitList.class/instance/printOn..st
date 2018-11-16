printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' with '.
	commits size printOn: aStream.
	aStream nextPutAll: ' commits.'