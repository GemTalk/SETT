action
createRowanPackageDefs
	self
		initializePackageMap;
		sortClassesIntoNamespaces;
		sortClassExtensionsIntoNamespaces;
		createRwPackageDefsForAllNamespaces