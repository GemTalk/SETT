simple directive tests
testSimpleDirective2
	"2: Subtract 16r20 from following byte -- used for 16r00 - 16r0F."

	self assertBytes: #[2 32 1] decodeAsCodePoints: #(0).
	self assertBytes: #[2 33 1] decodeAsCodePoints: #(1).
	self assertBytes: #[2 47 1] decodeAsCodePoints: #(15).
	"Unlikely to anything beyond 15 encoded, but ..."
	self assertBytes: #[2 127 1] decodeAsCodePoints: #(95).
