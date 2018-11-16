grammar
gemstoneInstanceVariableLine
	^ whitespace
		,
			('classVars' asPParser / 'classInstVars' asPParser / 'instVarNames' asPParser
				/ 'gemConfigurationAt' asPParser) , $: asPParser , arrayLiteral