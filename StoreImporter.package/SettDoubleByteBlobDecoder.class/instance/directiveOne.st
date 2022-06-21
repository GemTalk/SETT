private
directiveOne
	"The directive 1 means end of character and can indicate character width.
	 I don't see any way to be deterministic about the character width.
	 16r10 16r11 16r12 16r01 could be 16r101112 (quad byte) or it could be
	 16r1011 16r0012. If there is always supposed to be a 1 directive after
	 each character, our Store database contains non-compliant examples."

	"Count this directive byte"

	byteCount := byteCount + 1.
	"Skip any following directive 1 bytes. Important for quad byte encoding."
	[ inputStream atEnd not and: [ inputStream peekFor: Character home ] ] 
		whileTrue: [ byteCount := byteCount + 1 ].
	byteCount > 4 ifTrue: [ 
		self
			decodingError: 'Surprise new max byte count: <1p>'
			with: byteCount ].
	byteCount even ifTrue: [ 
		maxBytesPerCharacter := maxBytesPerCharacter max: byteCount ].
	self writeCharacter