private
decodeCharacters
	[ inputStream atEnd ]
		whileFalse: [ | codePointIn |
			codePointIn := self nextCodePoint.
			self processCodePoint: codePointIn ]