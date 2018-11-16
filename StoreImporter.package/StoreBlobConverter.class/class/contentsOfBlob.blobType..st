conversion
contentsOfBlob: blobBytes blobType: typeInteger
	"Currently known types:
	2: base64-encoded ByteString.
	3: Double-byte string of some sort."

	typeInteger = 2
		ifTrue: [ ^ self decodeBlobToByteString: blobBytes ].
	typeInteger = 3
		ifTrue: [ ^ self decodeBlobToDoubleByteString: blobBytes ].
	self error: 'Unknown blob type'