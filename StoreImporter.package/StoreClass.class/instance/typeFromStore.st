accessing
typeFromStore
	^ classType ifNil: [ classType := classDefinition typeFromStore ]