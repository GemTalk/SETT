private
directive: directiveByte
	directiveByte = 0
		ifTrue: [ ^ self decodingError ].
	directiveByte = 1
		ifTrue: [ ^ self directiveOne ].
	directiveByte = 2
		ifTrue: [ ^ self directiveTwo ].
	directiveByte = 3
		ifTrue: [ ^ self decodingError ].
	directiveByte = 4
		ifTrue: [ ^ self directiveFour ].
	directiveByte = 5
		ifTrue: [ ^ self directiveFive ].
	directiveByte >= 6
		ifTrue: [ ^ self decodingError ]