accessing
category
	^ category ifNil: [ category := classDefinition category ]