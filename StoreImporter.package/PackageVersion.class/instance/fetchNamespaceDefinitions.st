fetching
fetchNamespaceDefinitions

	| rows |
	namespaceDefinitions := Dictionary new.
	rows := dbFacade namespaceDefinitionsInPackageWithId: primaryKey.
	rows do: [ :row | 
		| definition |
		definition := SettNamespaceDefinition fromRow: row dbFacade: dbFacade.
		logger debug: 'Fetched Namespace Definition ' , definition signature.
		self addNamespaceDefinition: definition ].
	allNamespaceNames addAll: namespaceDefinitions keys