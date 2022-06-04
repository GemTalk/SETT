private-conversion
settPackageMapToNamespace: aSettNameSpace

	self
		addSettPackageMap:
			(SettPackageMap forPrefix:
				 (namespaceMap getPrefixFor: aSettNameSpace))
		forNamespace: aSettNameSpace