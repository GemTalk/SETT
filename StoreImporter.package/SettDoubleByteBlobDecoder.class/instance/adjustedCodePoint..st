private
adjustedCodePoint: codePointIn

	(codePointIn between: 16r00 and: 16rFF)
		ifTrue: [ ^ self accumulateInputByte: codePointIn ]
		ifFalse: [ self decodingError: 'Code-point out of range: <1p>' with: codePointIn ]