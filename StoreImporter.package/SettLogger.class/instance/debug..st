logging
debug: aString

	self isDebugging ifFalse: [ ^self ].
	self log: aString