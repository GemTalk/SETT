private
writeCharacter
	"Pharo (Zinc, actually) will complain later about characters outside Unicode range.
	 Catch them early."

	(codePointOut between: 0 and: 16r10FFFF) ifFalse: [ 
		self
			decodingError: 'Decoded value out of Unicode range: <1s>'
			with: codePointOut hex ].

	outputStream nextPut: (Character codePoint: codePointOut).
	self resetAccumulator