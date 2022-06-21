simple directive tests
testSimpleDirective5
	"5: Add 16rA0 to following byte -- used for 16rC0 - 16rFF."

	self assertBytes: #[5 32 1] decodeAsCodePoints: #(192).
	self assertBytes: #[5 33 1] decodeAsCodePoints: #(193).
	self assertBytes: #[5 95 1] decodeAsCodePoints: #(255).
	"Unlikely to anything below 192 encoded, but ..."
	self assertBytes: #[5 31 1] decodeAsCodePoints: #(191).
	self assertBytes: #[5 16 1] decodeAsCodePoints: #(176).
