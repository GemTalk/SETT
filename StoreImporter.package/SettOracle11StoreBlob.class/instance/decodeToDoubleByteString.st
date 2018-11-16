private
decodeToDoubleByteString
	| inputString |
	inputString := self decodeToByteString.
	^ SettDoubleByteBlobDecoder decode: inputString