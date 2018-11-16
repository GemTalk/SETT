action
initializePackageMap
	packageMap := Dictionary new.
	namespaceMap := destinationConfiguration namespaceMapping.
	namespaceMap fetchMappings
		do: [ :settNameSpace | 
			| aSettPackageMap |
			aSettPackageMap := SettPackageMap new
				prefix: (namespaceMap getPrefixFor: settNameSpace);
				yourself.
			self addSettPackageMap: aSettPackageMap forNamespace: settNameSpace ]