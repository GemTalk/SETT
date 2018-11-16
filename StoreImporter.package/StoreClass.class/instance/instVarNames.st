accessing
instVarNames
	^ instVarNames ifNil: [ instVarNames := classDefinition instVarNames ].

	
