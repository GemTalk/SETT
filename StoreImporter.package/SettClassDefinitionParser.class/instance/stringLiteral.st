grammar
stringLiteral
	^ super stringLiteral map: [ :ws :lquote :body :rquote | body ]