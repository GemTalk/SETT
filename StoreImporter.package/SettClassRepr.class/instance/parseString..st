parsing
parseString: aString
	^ self class withAll: (aString splitOn: $.)