action
createRowanPackageDefs
	self
		initializePackageMap;
		decorateDefinitionsWithDuplicatedSimpleNames;
		sortClassesIntoNamespaces;
		sortClassExtensionsIntoNamespaces;
		createRwPackageDefsForAllNamespaces