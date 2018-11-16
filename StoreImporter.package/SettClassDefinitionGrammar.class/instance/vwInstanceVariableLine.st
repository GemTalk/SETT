grammar
vwInstanceVariableLine
	^ whitespace
		, ('instanceVariableNames' asPParser / 'classInstanceVariableNames' asPParser)
		, $: asPParser , stringOfIdentifiers