action
sortDefinitionsIntoNamespaceWith: defs position: position

	defs
		do: [ :def | 
			| namespace packageRefs |
			namespace := SettNamespace fromClassString: def classFullName definitionString.
			packageRefs := (packageMap at: (namespaceMap getMostSpecificNamespaceFor: namespace))
				at: position.
			packageRefs add: def ]