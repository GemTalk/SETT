accessing
getMostSpecificNamespaceFor: aSettNamespace
	[aSettNamespace size > 0]
		whileTrue: [ | results |
			results := self getNamespaceFor: aSettNamespace.
			results ifNil: [ aSettNamespace removeLast ] ifNotNil: [ ^ results ] ]