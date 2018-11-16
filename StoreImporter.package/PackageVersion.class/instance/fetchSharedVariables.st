fetching
fetchSharedVariables
	| rows |
	rows := dbFacade sharedVariablesInPackageWithId: primaryKey.
	rows
		do: [ :row | 
			| variableDefinition |
			variableDefinition := SettSharedVariableDefinition fromRow: row dbFacade: dbFacade.
			self addSharedVariable: variableDefinition ]