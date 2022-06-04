grammar
gemstoneClassline
	^ gemstoneSuperClass
		, whitespace
		, ('subclass:' asPParser / 'byteSubclass:' asPParser / 'indexableSubclass:' asPParser)
		, (stringLiteral / symbol)