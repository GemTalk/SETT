printing
printOn: aStream
	aStream nextPutAll: '<'; nextPutAll: self class name; nextPutAll: ' '.
	pundleName printOn: aStream.
	aStream nextPutAll: ' '.
	version printOn: aStream.
	aStream nextPutAll: '>'