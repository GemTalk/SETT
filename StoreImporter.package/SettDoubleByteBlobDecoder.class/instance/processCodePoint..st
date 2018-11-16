private
processCodePoint: codePointIn
	(codePointIn between: 16r01 and: 16r0F)
		ifTrue: [ ^ self directive: codePointIn ].
	(codePointIn between: 16r10 and: 16r7F)
		ifTrue: [ ^ self accumulateInputByte: codePointIn ].
	self decodingError