support - test cases
assertBytes: aByteArray decodeAsCodePoints: anArray

	| decodedString codePoints |
	decodedString := SettDoubleByteBlobDecoder decode: aByteArray asString.
	codePoints := decodedString asArray collect: [ :each | each codePoint ].
	self assert: codePoints equals: anArray