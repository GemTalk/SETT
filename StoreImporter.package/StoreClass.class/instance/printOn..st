printing
printOn: aStream
	aStream
		nextPutAll: self class name;
		space.
	className printOn: aStream