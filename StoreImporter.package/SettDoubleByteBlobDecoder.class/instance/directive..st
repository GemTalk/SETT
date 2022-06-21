private
directive: directiveByte

	directiveByte = 1 ifTrue: [ ^ self directiveOne ].
	directiveByte = 2 ifTrue: [ ^ self directiveTwo ].
	directiveByte = 4 ifTrue: [ ^ self directiveFour ].
	directiveByte = 5 ifTrue: [ ^ self directiveFive ].
	^ self decodingError: 'Unrecognized directive: <1p>' with: directiveByte 