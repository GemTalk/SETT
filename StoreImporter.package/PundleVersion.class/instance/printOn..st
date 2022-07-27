printing
printOn: aStream
	aStream nextPutAll: '<'; nextPutAll: self class name; nextPutAll: ' '.
	self pundleName printOn: aStream.
	aStream nextPutAll: ' '.
	self version printOn: aStream.
	aStream nextPutAll: '>'