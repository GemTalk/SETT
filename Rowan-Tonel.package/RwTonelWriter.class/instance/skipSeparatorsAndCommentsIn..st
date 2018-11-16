private-writing
skipSeparatorsAndCommentsIn: aPositionableStream
	[ | startPosition |
	startPosition := aPositionableStream position.
	self
		skipSeparatorsIn: aPositionableStream;
		skipCommentIn: aPositionableStream.
	aPositionableStream position = startPosition ] whileFalse