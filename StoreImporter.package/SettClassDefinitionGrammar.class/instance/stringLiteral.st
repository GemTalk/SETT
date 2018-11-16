grammar
stringLiteral
	^ whitespace , singleQuote , (singleQuote not , #any asPParser) star flatten, singleQuote