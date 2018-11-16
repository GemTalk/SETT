grammar
arrayConstructor
	^ whitespace , '#[' asPParser
		, (attributeValue , arrayConstructorSubsequentElement star) optional
		, whitespace optional, $] asPParser