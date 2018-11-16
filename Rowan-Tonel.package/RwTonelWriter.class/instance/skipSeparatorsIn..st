private-writing
skipSeparatorsIn: aStream
	[ aStream peek isSeparator ] whileTrue: [ aStream skip: 1 ]