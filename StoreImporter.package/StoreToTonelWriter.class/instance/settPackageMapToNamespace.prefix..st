private-conversion
settPackageMapToNamespace: settNameSpace prefix: aPrefix
	packageMap
		at: settNameSpace
		put:
			(SettPackageMap new
				prefix: (namespaceMap getPrefixFor: settNameSpace);
				yourself)