grammar
stringOfIdentifiers
	^ super stringOfIdentifiers map: [ :ws1 :lquote :values :ws2 :rquote | values ]