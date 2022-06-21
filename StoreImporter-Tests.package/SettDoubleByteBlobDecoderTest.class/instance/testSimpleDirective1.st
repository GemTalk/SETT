simple directive tests
testSimpleDirective1
	"1: End of character. Characters from 16r10 - 16r7f are themselves."

	self assertBytes: #[1] decodeAsCodePoints: #(0).
	self assertBytes: #[16 1] decodeAsCodePoints: #(16).
	self assertBytes: #[17 1] decodeAsCodePoints: #(17).
	self assertBytes: #[127 1] decodeAsCodePoints: #(127).
