converting
decode: inputString

	inputStream := ReadStream on: inputString.
	outputStream := WriteStream on: WideString new.
	maxBytesPerCharacter := 2. "Default to 2 bytes per character."
	self resetAccumulator.
	self decodeCharacters.
	byteCount > 0 ifTrue: [ 
		self
			decodingError: 'Incomplete character decoded: <1s>'
			with: codePointOut hex ].
	^ outputStream contents