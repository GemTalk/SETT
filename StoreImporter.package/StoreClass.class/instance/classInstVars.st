accessing
classInstVars
	^ classInstVars ifNil: [ classInstVars := classDefinition classInstVars ].
