private-writing
splitMethodSource: aMethodDefinition into: aBlock
	"Parse the method source into message pattern and body 
	and evaluate aBlock with the two strings as arguments. "

	| keywords source declaration |
	keywords := aMethodDefinition selector keywords.
	source := aMethodDefinition source readStream.
	self skipSeparatorsAndCommentsIn: source.
	"Parse declaration"
	declaration := String new writeStream.
	[ | declarationIsComplete |
	declarationIsComplete := (self
		selectorIsComplete: keywords
		in: declaration originalContents)
		and: [ "if it's not a unary selector, get one 
			more word: the final formal parameter" (':+-/\*~<>=@,%|&?!' includes: declaration contents trimRight last) not ].
	declarationIsComplete not & source atEnd
		ifTrue: [ self error: 'Method source does not include the method''s selector.' ].
	declarationIsComplete ]
		whileFalse: [ "get separators"
			[ source atEnd not and: [ source peek isSeparator ] ]
				whileTrue: [ declaration nextPut: source next ].
			"take next word"
			[ source atEnd not and: [ source peek isSeparator not ] ]
				whileTrue: [ declaration nextPut: source next ] ].
	aBlock
		value: (declaration contents trimLeft withLineEndings: self newLine)
		value: (source upToEnd withLineEndings: self newLine)