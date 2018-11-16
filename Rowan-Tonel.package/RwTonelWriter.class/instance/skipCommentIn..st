private-writing
skipCommentIn: aStream
	(aStream atEnd not and: [ aStream peek = $" ])
		ifTrue: [ aStream skip: 1.
			[ aStream atEnd not and: [ aStream next ~= $" ] ] whileTrue ]