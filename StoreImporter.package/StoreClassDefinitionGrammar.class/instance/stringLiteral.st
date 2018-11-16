accessing
stringLiteral
	^ whitespace, $' asPParser, #any asPParser starLazy flatten, $' asPParser starLazy.