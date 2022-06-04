action
initializePackageMap

	packageMap := Dictionary new.
	namespaceMap := destinationConfiguration namespaceMapping.
	namespaceMap fetchMappings do: [ :settNameSpace | 
		self settPackageMapToNamespace: settNameSpace ]