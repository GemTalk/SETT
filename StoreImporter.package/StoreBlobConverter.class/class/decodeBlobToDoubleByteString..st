conversion
decodeBlobToDoubleByteString: blobBytes
	| inputString |
	inputString := self decodeBlobToByteString: blobBytes.
	^ SettDoubleByteBlobDecoder decode: inputString