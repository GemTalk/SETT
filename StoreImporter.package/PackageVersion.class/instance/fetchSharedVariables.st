fetching
fetchSharedVariables
	| rows |
	rows := dbFacade sharedVariablesInPackageWithId: primaryKey.
	rows
		do: [ :row | 
			| variableDefinition |
			variableDefinition := SettSharedVariableDefinition fromRow: row dbFacade: dbFacade.
			logger debug: 'Fetched Shared variable ' , variableDefinition signature.
			self addSharedVariable: variableDefinition ]