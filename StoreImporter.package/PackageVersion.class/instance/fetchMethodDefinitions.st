fetching
fetchMethodDefinitions
	| rows |
	rows := dbFacade methodDefinitionsInPackageWithId: primaryKey.
	rows
		do: [ :row | 
			| methodDefinition |
			methodDefinition := SettMethodDefinition fromRow: row dbFacade: dbFacade.
			self addMethod: methodDefinition ]