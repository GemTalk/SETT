grammar
identifierToken
	^ super identifierToken map: [ :someWhitespace :identifierString | identifierString ]