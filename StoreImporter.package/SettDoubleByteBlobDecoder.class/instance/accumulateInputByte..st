private
accumulateInputByte: aByte
	codePointOut := codePointOut + (aByte * multiplier).
	multiplier := multiplier bitShift: 8.
	multiplier > 16r100
		ifTrue: [ self writeCharacter ]