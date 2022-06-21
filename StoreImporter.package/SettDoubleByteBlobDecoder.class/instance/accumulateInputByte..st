private
accumulateInputByte: aByte
	"It seems VW can support up to quad bytes.
	 Arbitrarily writing after receiving the second byte is too soon.
	 A 1 byte is supposed to be the end of character marker, but
	 limit it to four bytes no matter what."

	| multiplier |
	multiplier := 2 raisedToInteger: byteCount * 8.
	codePointOut := codePointOut + (aByte * multiplier).
	byteCount := byteCount + 1.
	"Even if we have hit the current max, there may be 'end of character' 1s following, for wider characters."
	(byteCount >= maxBytesPerCharacter and: [inputStream peek ~= Character home])
		ifTrue: [ self writeCharacter ]