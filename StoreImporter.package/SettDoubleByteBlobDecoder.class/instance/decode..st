converting
decode: inputString
	inputStream := ReadStream on: inputString.
	outputStream := WriteStream on: WideString new.
	self resetAccumulator.
	self decodeCharacters.
	multiplier = 1
		ifFalse: [ self decodingError ].
	^ outputStream contents