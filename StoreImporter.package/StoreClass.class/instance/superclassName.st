accessing
superclassName
	^ superclassName ifNil: [ superclassName := classDefinition superclassName ].
	