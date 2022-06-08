accessing
getMostSpecificNamespaceFor: aSettNamespace

	[ aSettNamespace notEmpty ]
		whileTrue: [ 
			| results |
			results := self getNamespaceFor: aSettNamespace.
			results ifNil: [ aSettNamespace removeLast ] ifNotNil: [ ^ results ] ]