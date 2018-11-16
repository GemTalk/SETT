grammar
identifierTokenInString
	^ super identifierTokenInString map: [ :notQuote :token | token ]