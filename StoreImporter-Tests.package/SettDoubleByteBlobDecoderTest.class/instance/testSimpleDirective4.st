simple directive tests
testSimpleDirective4
	"4: Add 16r60 to following byte -- used for 16r80 - 16rBF."

	self assertBytes: #[4 32 1] decodeAsCodePoints: #(128).
	self assertBytes: #[4 33 1] decodeAsCodePoints: #(129).
	self assertBytes: #[4 95 1] decodeAsCodePoints: #(191).
	"Unlikely to anything beyond 191 encoded, but ..."
	self assertBytes: #[4 127 1] decodeAsCodePoints: #(223).
	"Unlikely to anything below 128 encoded, but ..."
	self assertBytes: #[4 31 1] decodeAsCodePoints: #(127).
	self assertBytes: #[4 16 1] decodeAsCodePoints: #(112).
