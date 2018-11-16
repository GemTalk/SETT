action
sortDefinitionsIntoNamespaceWith: defs isDefinition: isDefinition
	defs
		do: [ :def | 
			| namespace packagesInNameSpace |
			namespace := SettNamespace fromClassString: def classFullName definitionString.
			destinationConfiguration includeNamespaceInPackageName
				ifTrue: [ packagesInNameSpace := packageMap at: namespace ifAbsent: [ self createSettPackageMapForNamespace: namespace ] ]
				ifFalse: [ packagesInNameSpace := packageMap at: (namespaceMap getMostSpecificNamespaceFor: namespace) ].
			isDefinition
				ifTrue: [ packagesInNameSpace addClassDefinition: def ]
				ifFalse: [ packagesInNameSpace addExtension: def ] ]