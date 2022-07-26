converting - private
decodeFromFullBytes
	blobType = 2
		ifTrue: [ ^ self decodeToByteString ].
	blobType = 3
		ifTrue: [ ^ self decodeToDoubleByteString ].
	self error: 'Unknown blob type'