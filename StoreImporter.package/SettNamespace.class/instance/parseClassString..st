parsing
parseClassString: aString
	| newNamespace |
	newNamespace := self class withAll: (aString splitOn: $.).
	newNamespace removeLast.
	^ newNamespace